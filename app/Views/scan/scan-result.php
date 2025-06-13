<?php
use App\Libraries\enums\TipeUser;
switch ($type) {
   case TipeUser::Siswa:
?>
   <!-- Scan Presensi Siswa -->
      <h3 class="text-success text-center mb-4"><b>Presensi <?= $waktu; ?> berhasil!</b></h3>
      <div class="row w-100">
         <div class="col">
            <p>Nama : <b><?= $data['nama_siswa']; ?></b></p>
            <p>NISN : <b><?= $data['nis']; ?></b></p>
            <p>Kelas : <b><?= $data['kelas']  . ' ' . $data['jurusan']; ?></b></p>
            <p>Jenis Kelamin : <b><?= $data['jenis_kelamin']; ?></b></p>
            <p>No HP : <b><?= $data['no_hp']; ?></b></p>
         </div>
         <div class="col">
            <?= jam($presensi); ?>
         </div>
      </div>
      <div hidden>
         <?php
         $nama_siswa = $data['nama_siswa'];
         $tahun = date('Y');
         $jenis_kelamin = $data['jenis_kelamin'];
         function panggilan($jenis_kelamin)
         {
            if ($jenis_kelamin == 'Laki-laki') {
               return "Ananda";
            } else {
               return "Adinda";
            }
         }
         if (($waktu == "masuk") && (TipeUser::Siswa)) {
            // Notifikasi Whatsapp Presensi Masuk Siswa
            $curl = curl_init();
            curl_setopt_array($curl, array(
               CURLOPT_URL => 'https://api.zedlabs.id/send-message',
               CURLOPT_RETURNTRANSFER => true,
               CURLOPT_ENCODING => '',
               CURLOPT_MAXREDIRS => 10,
               CURLOPT_TIMEOUT => 0,
               CURLOPT_FOLLOWLOCATION => true,
               CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
               CURLOPT_CUSTOMREQUEST => 'POST',
               CURLOPT_POSTFIELDS => array(
                  'message' => '*PTSP MTSN 1 PANDEGLANG*
                  *Presensi ' . $waktu . '* berhasil!
                  Kami informasikan bahwa *' . panggilan($jenis_kelamin) . ' ' . $nama_siswa . '* telah melakukan presensi ' . $waktu . ' hari ini pukul ' . $presensi['jam_masuk'] . ' WIB.
                  _© 2024 - ' . $tahun . ' MTs Negeri 1 Pandeglang_',
                  'number' =>  $data['no_hp']
               ),
            ));
            $response = curl_exec($curl);
            curl_close($curl);
            echo $response;
         } else {
            // Notifikasi Whatsapp Presensi Pulang Siswa
            $curl = curl_init();
            curl_setopt_array($curl, array(
               CURLOPT_URL => 'https://api.zedlabs.id/send-message',
               CURLOPT_RETURNTRANSFER => true,
               CURLOPT_ENCODING => '',
               CURLOPT_MAXREDIRS => 10,
               CURLOPT_TIMEOUT => 0,
               CURLOPT_FOLLOWLOCATION => true,
               CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
               CURLOPT_CUSTOMREQUEST => 'POST',
               CURLOPT_POSTFIELDS => array(
                  'message' => '*PTSP MTSN 1 PANDEGLANG*
                  *Presensi ' . $waktu . '* berhasil!
                  Kami informasikan bahwa *' . panggilan($jenis_kelamin) . ' ' . $nama_siswa . '* telah melakukan presensi ' . $waktu . ' hari ini pukul ' . $presensi['jam_keluar'] . ' WIB.
                  _© 2024 - ' . $tahun . ' MTs Negeri 1 Pandeglang_',
                  'number' =>  $data['no_hp']
               ),
            ));
            $response = curl_exec($curl);
            curl_close($curl);
            echo $response;
         }
         break;
         ?>
      </div>
   <?php
   case TipeUser::Guru:
   ?>
   <!-- Scan Presensi Guru -->
      <h3 class="text-success text-center mb-4"><b>Presensi <?= $waktu; ?> berhasil!</b></h3>
      <div class="row w-100">
         <div class="col">
            <p>Nama : <b><?= $data['nama_guru']; ?></b></p>
            <p>NIP/NIK/NUPTK : <b><?= $data['nuptk']; ?></b></p>
            <p>No HP : <b><?= $data['no_hp']; ?></b></p>
         </div>
         <div class="col">
            <?= jam($presensi); ?>
         </div>
      </div>
      
      <div hidden>
         <?php
         $nama_guru = $data['nama_guru'];
         $tahun = date('Y');
         $jenis_kelamin = $data['jenis_kelamin'];
         function panggilan($jenis_kelamin)
         {
            if ($jenis_kelamin == 'Laki-laki') {
               return "Bapak";
            } else {
               return "Ibu";
            }
         }
         if (($waktu == "masuk") && (TipeUser::Guru)) {
            // Notifikasi Whatsapp Presensi Masuk Guru/Staf
            $curl = curl_init();
            curl_setopt_array($curl, array(
               CURLOPT_URL => 'https://api.zedlabs.id/send-message',
               CURLOPT_RETURNTRANSFER => true,
               CURLOPT_ENCODING => '',
               CURLOPT_MAXREDIRS => 10,
               CURLOPT_TIMEOUT => 0,
               CURLOPT_FOLLOWLOCATION => true,
               CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
               CURLOPT_CUSTOMREQUEST => 'POST',
               CURLOPT_POSTFIELDS => array(
                  'message' => '*PTSP MTSN 1 PANDEGLANG*
                  *Presensi ' . $waktu . '* berhasil!
                  Kami informasikan bahwa *' . panggilan($jenis_kelamin) . ' ' . $nama_guru . '* telah melakukan presensi ' . $waktu . ' hari ini pukul ' . $presensi['jam_masuk'] . ' WIB.
                  _© 2024 - ' . $tahun . ' MTs Negeri 1 Pandeglang_',
                  'number' =>  $data['no_hp']
               ),
            ));
            $response = curl_exec($curl);
            curl_close($curl);
            echo $response;
         } else {
            // Notifikasi Whatsapp Presensi Pulang Guru/Staf
            $curl = curl_init();
            curl_setopt_array($curl, array(
               CURLOPT_URL => 'https://api.zedlabs.id/send-message',
               CURLOPT_RETURNTRANSFER => true,
               CURLOPT_ENCODING => '',
               CURLOPT_MAXREDIRS => 10,
               CURLOPT_TIMEOUT => 0,
               CURLOPT_FOLLOWLOCATION => true,
               CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
               CURLOPT_CUSTOMREQUEST => 'POST',
               CURLOPT_POSTFIELDS => array(
                  'message' => '*PTSP MTSN 1 PANDEGLANG*
                  *Presensi ' . $waktu . '* berhasil!
                  Kami informasikan bahwa *' . panggilan($jenis_kelamin) . ' ' . $nama_guru . '* telah melakukan presensi ' . $waktu . ' hari ini pukul ' . $presensi['jam_keluar'] . ' WIB.
                  _© 2024 - ' . $tahun . ' MTs Negeri 1 Pandeglang_',
                  'number' =>  $data['no_hp']
               ),
            ));
            $response = curl_exec($curl);
            curl_close($curl);
            echo $response;
         }
         break;
      default:
         ?>
      </div>
      <h3 class="text-danger">Tipe tidak valid</h3>
   <?php
         break;
   }
   function jam($presensi)
   {
   ?>
   <p>Jam masuk : <b class="text-info"><?= $presensi['jam_masuk'] ?? '-'; ?></b></p>
   <p>Jam pulang : <b class="text-info"><?= $presensi['jam_keluar'] ?? '-'; ?></b></p>
<?php
   }
?>