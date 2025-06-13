<?php

namespace App\Controllers;

use App\Models\GuruModel;
use App\Models\KelasModel;
use App\Models\SiswaModel;
use CodeIgniter\I18n\Time;
use App\Models\PetugasModel;
use App\Libraries\enums\TipeUser;
use App\Models\PresensiGuruModel;
use App\Models\PresensiSiswaModel;

class Scan extends BaseController
{

   protected SiswaModel $siswaModel;
   protected GuruModel $guruModel;

   protected KelasModel $KelasModel;

   protected PresensiSiswaModel $presensiSiswaModel;
   protected PresensiGuruModel $presensiGuruModel;

   protected PetugasModel $petugasModel;

   public function __construct()
   {
      $this->siswaModel = new SiswaModel();
      $this->guruModel = new GuruModel();
      $this->KelasModel = new KelasModel();
      $this->presensiSiswaModel = new PresensiSiswaModel();
      $this->presensiGuruModel = new PresensiGuruModel();
      $this->petugasModel = new PetugasModel();
   }




   // 







   // protected SiswaModel $siswaModel;
   // protected GuruModel $guruModel;

   // protected PresensiSiswaModel $presensiSiswaModel;
   // protected PresensiGuruModel $presensiGuruModel;

   // public function __construct()
   // {
   //    $this->siswaModel = new SiswaModel();
   //    $this->guruModel = new GuruModel();
   //    $this->presensiSiswaModel = new PresensiSiswaModel();
   //    $this->presensiGuruModel = new PresensiGuruModel();
   // }

   public function index($t = 'Masuk')
   {
      $data = ['waktu' => $t, 'title' => ''];
      return view('scan/scan', $data);

      $now = Time::now();

      $dateRange = [];
      $siswaKehadiranArray = [];
      $guruKehadiranArray = [];

      for ($i = 6; $i >= 0; $i--) {
         $date = $now->subDays($i)->toDateString();
         if ($i == 0) {
            $formattedDate = "Hari ini";
         } else {
            $t = $now->subDays($i);
            $formattedDate = "{$t->getDay()} " . substr($t->toFormattedDateString(), 0, 3);
         }
         array_push($dateRange, $formattedDate);
         array_push(
            $siswaKehadiranArray,
            count($this->presensiSiswaModel
               ->join('tb_siswa', 'tb_presensi_siswa.id_siswa = tb_siswa.id_siswa', 'left')
               ->where(['tb_presensi_siswa.tanggal' => "$date", 'tb_presensi_siswa.id_kehadiran' => '1'])->findAll())
         );
         array_push(
            $guruKehadiranArray,
            count($this->presensiGuruModel
               ->join('tb_guru', 'tb_presensi_guru.id_guru = tb_guru.id_guru', 'left')
               ->where(['tb_presensi_guru.tanggal' => "$date", 'tb_presensi_guru.id_kehadiran' => '1'])->findAll())
         );
      }

      $today = $now->toDateString();

      $data = [
         'title' => 'Dashboard',
         'ctx' => 'dashboard',

         'siswa' => $this->siswaModel->getAllSiswaWithKelas(),
         'guru' => $this->guruModel->getAllGuru(),

         'kelas' => $this->KelasModel->getDataKelas(),

         'dateRange' => $dateRange,
         'dateNow' => $now->toLocalizedString('d MMMM Y'),

         'grafikKehadiranSiswa' => $siswaKehadiranArray,
         'grafikkKehadiranGuru' => $guruKehadiranArray,

         'jumlahKehadiranSiswa' => [
            'hadir' => count($this->presensiSiswaModel->getPresensiByKehadiran('1', $today)),
            'sakit' => count($this->presensiSiswaModel->getPresensiByKehadiran('2', $today)),
            'izin' => count($this->presensiSiswaModel->getPresensiByKehadiran('3', $today)),
            'alfa' => count($this->presensiSiswaModel->getPresensiByKehadiran('4', $today))
         ],

         'jumlahKehadiranGuru' => [
            'hadir' => count($this->presensiGuruModel->getPresensiByKehadiran('1', $today)),
            'sakit' => count($this->presensiGuruModel->getPresensiByKehadiran('2', $today)),
            'izin' => count($this->presensiGuruModel->getPresensiByKehadiran('3', $today)),
            'alfa' => count($this->presensiGuruModel->getPresensiByKehadiran('4', $today))
         ],

         'petugas' => $this->petugasModel->getAllPetugas(),
      ];
   }

   public function cekKode()
   {
      // ambil variabel POST
      $uniqueCode = $this->request->getVar('unique_code');
      $waktuAbsen = $this->request->getVar('waktu');

      $status = false;
      $type = TipeUser::Siswa;

      // cek data siswa di database
      $result = $this->siswaModel->cekSiswa($uniqueCode);

      if (empty($result)) {
         // jika cek siswa gagal, cek data guru
         $result = $this->guruModel->cekGuru($uniqueCode);

         if (!empty($result)) {
            $status = true;

            $type = TipeUser::Guru;
         } else {
            $status = false;

            $result = NULL;
         }
      } else {
         $status = true;
      }

      if (!$status) { // data tidak ditemukan
         return $this->showErrorView('Data tidak ditemukan');
      }

      // jika data ditemukan
      switch ($waktuAbsen) {
         case 'masuk':
            return $this->absenMasuk($type, $result);
            break;

         case 'pulang':
            return $this->absenPulang($type, $result);
            break;

         default:
            return $this->showErrorView('Data tidak valid');
            break;
      }
   }

   public function absenMasuk($type, $result)
   {
      // data ditemukan
      $data['data'] = $result;
      $data['waktu'] = 'masuk';

      $date = Time::today()->toDateString();
      $time = Time::now()->toTimeString();

      // presensi masuk
      switch ($type) {
         case TipeUser::Guru:
            $idGuru =  $result['id_guru'];
            $data['type'] = TipeUser::Guru;

            $sudahAbsen = $this->presensiGuruModel->cekAbsen($idGuru, $date);

            if ($sudahAbsen) {
               $data['presensi'] = $this->presensiGuruModel->getPresensiById($sudahAbsen);
               return $this->showErrorView('Anda sudah presensi hari ini', $data);
            }

            $this->presensiGuruModel->absenMasuk($idGuru, $date, $time);

            $data['presensi'] = $this->presensiGuruModel->getPresensiByIdGuruTanggal($idGuru, $date);

            return view('scan/scan-result', $data);

         case TipeUser::Siswa:
            $idSiswa =  $result['id_siswa'];
            $idKelas =  $result['id_kelas'];
            $data['type'] = TipeUser::Siswa;

            $sudahAbsen = $this->presensiSiswaModel->cekAbsen($idSiswa, Time::today()->toDateString());

            if ($sudahAbsen) {
               $data['presensi'] = $this->presensiSiswaModel->getPresensiById($sudahAbsen);
               return $this->showErrorView('Anda sudah presensi hari ini', $data);
            }

            $this->presensiSiswaModel->absenMasuk($idSiswa, $date, $time, $idKelas);

            $data['presensi'] = $this->presensiSiswaModel->getPresensiByIdSiswaTanggal($idSiswa, $date);

            return view('scan/scan-result', $data);

         default:
            return $this->showErrorView('Tipe tidak valid');
      }
   }

   public function absenPulang($type, $result)
   {
      // data ditemukan
      $data['data'] = $result;
      $data['waktu'] = 'pulang';

      $date = Time::today()->toDateString();
      $time = Time::now()->toTimeString();

      // absen pulang
      switch ($type) {
         case TipeUser::Guru:
            $idGuru =  $result['id_guru'];
            $data['type'] = TipeUser::Guru;

            $sudahAbsen = $this->presensiGuruModel->cekAbsen($idGuru, $date);

            if (!$sudahAbsen) {
               return $this->showErrorView('Anda belum presensi hari ini', $data);
            }

            $this->presensiGuruModel->absenKeluar($sudahAbsen, $time);

            $data['presensi'] = $this->presensiGuruModel->getPresensiById($sudahAbsen);

            return view('scan/scan-result', $data);

         case TipeUser::Siswa:
            $idSiswa =  $result['id_siswa'];
            $data['type'] = TipeUser::Siswa;

            $sudahAbsen = $this->presensiSiswaModel->cekAbsen($idSiswa, $date);

            if (!$sudahAbsen) {
               return $this->showErrorView('Anda belum presensi hari ini', $data);
            }

            $this->presensiSiswaModel->absenKeluar($sudahAbsen, $time);

            $data['presensi'] = $this->presensiSiswaModel->getPresensiById($sudahAbsen);

            return view('scan/scan-result', $data);
         default:
            return $this->showErrorView('Tipe tidak valid');
      }
   }

   public function showErrorView(string $msg = 'no error message', $data = NULL)
   {
      $errdata = $data ?? [];
      $errdata['msg'] = $msg;

      return view('scan/error-scan-result', $errdata);
   }
}
