<?= $this->extend('templates/laporan') ?>

<?= $this->section('content') ?>
<table width="100%">
   <tr>
      <td>
         <img src="<?= base_url('assets/img/logo_kemenag.png'); ?>" alt="Logo Institusi" width="100px" height="90px"></img>
      </td>
      <td width="100%">
         <h2 align="center">DAFTAR HADIR SISWA</h2>
         <h3 align="center"><?= $generalSettings->school_name; ?></h3>
         <h4 align="center">TAHUN PELAJARAN <?= $generalSettings->school_year; ?></h4>
      </td>
      <td>
         <img src="<?= getLogo(); ?>" width="100px" height="90px"></img>
      </td>
   </tr>
</table>
<span>Bulan : <?= $bulan; ?></span>
<span style="position: absolute;right: 10;">Kelas : <?= "{$kelas['kelas']} ({$kelas['jurusan']})"; ?></span>
<table align="center" border="1">
   <tr>
      <th rowspan="3" align="center">No</th>
      <th rowspan="3" width="1000px">Nama Lengkap</th>
      <th align="center" colspan="<?= count($tanggal); ?>">Hari/Tanggal</th>
      <th rowspan="2" colspan="4" align="center">Total</th>
   </tr>
   <tr>
      <?php foreach ($tanggal as $value) : ?>
         <td align="center" width="50px"><b><?= $value->toLocalizedString('E'); ?></b></td>
      <?php endforeach; ?>
   </tr>
   <tr>
      <?php foreach ($tanggal as $value) : ?>
         <th align="center"><?= $value->format('d'); ?></th>
      <?php endforeach; ?>
      <th align="center" width="50px" style="background-color:lightgreen;">H</th>
      <th align="center" width="50px" style="background-color:yellow;">S</th>
      <th align="center" width="50px" style="background-color:lightblue;">I</th>
      <th align="center" width="50px" style="background-color:pink;">A</th>
   </tr>

   <?php $i = 0; ?>

   <?php foreach ($listSiswa as $siswa) : ?>
      <?php
      $jumlahHadir = count(array_filter($listAbsen, function ($a) use ($i) {
         if ($a['lewat'] || is_null($a[$i]['id_kehadiran'])) return false;
         return $a[$i]['id_kehadiran'] == 1;
      }));
      $jumlahSakit = count(array_filter($listAbsen, function ($a) use ($i) {
         if ($a['lewat'] || is_null($a[$i]['id_kehadiran'])) return false;
         return $a[$i]['id_kehadiran'] == 2;
      }));
      $jumlahIzin = count(array_filter($listAbsen, function ($a) use ($i) {
         if ($a['lewat'] || is_null($a[$i]['id_kehadiran'])) return false;
         return $a[$i]['id_kehadiran'] == 3;
      }));
      $jumlahTidakHadir = count(array_filter($listAbsen, function ($a) use ($i) {
         if ($a['lewat']) return false;
         if (is_null($a[$i]['id_kehadiran']) || $a[$i]['id_kehadiran'] == 4) return true;
         return false;
      }));
      ?>
      <tr>
         <td align="center"><?= $i + 1; ?></td>
         <td><?= $siswa['nama_siswa']; ?></td>
         <?php foreach ($listAbsen as $absen) : ?>
            <?= kehadiran($absen[$i]['id_kehadiran'] ?? ($absen['lewat'] ? 5 : 4)); ?>
         <?php endforeach; ?>
         <td align="center">
            <?= $jumlahHadir != 0 ? $jumlahHadir : '-'; ?>
         </td>
         <td align="center">
            <?= $jumlahSakit != 0 ? $jumlahSakit : '-'; ?>
         </td>
         <td align="center">
            <?= $jumlahIzin != 0 ? $jumlahIzin : '-'; ?>
         </td>
         <td align="center">
            <?= $jumlahTidakHadir != 0 ? $jumlahTidakHadir : '-'; ?>
         </td>
      </tr>
   <?php
      $i++;
   endforeach; ?>

</table>
<br>
<table>
   <tr>
      <td>Laki-laki</td>
      <td>: <?= $jumlahSiswa['laki'] . " Siswa"; ?></td>
   </tr>
   <tr>
      <td>Perempuan</td>
      <td>: <?= $jumlahSiswa['perempuan'] . " Siswi"; ?></td>
   </tr>
   <tr>
      <td><b>Jumlah siswa</b></td>
      <td><b>: <?= count($listSiswa) . " Orang"; ?></b></td>
   </tr>
</table>
<br>
<table width="100%">
   <tr>
      <td width="25%"></td>
      <td width="25%"></td>
      <td width="25%"></td>
      <td width="25%">Pandeglang, <?= date('d') . " $bulan " . date('Y'); ?></td>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
      <td>Mengetahui,</td>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
      <td>Kepala Madrasah</td>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
      <td><img src="<?= base_url('assets/img/tte_kepala.jpg'); ?>" alt="TTE Kepala" width="100px" height="100px"></img></td>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
      <td><b>Eman Sulaiman, S.Ag., M.Pd.</b></td>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
      <td>NIP 197006032000031002</td>
   </tr>
</table>

<?php
function kehadiran($kehadiran)
{
   $text = '';
   switch ($kehadiran) {
      case 1:
         $text = "<td align='center' style='background-color:lightgreen;'>H</td>";
         break;
      case 2:
         $text = "<td align='center' style='background-color:yellow;'>S</td>";
         break;
      case 3:
         $text = "<td align='center' style='background-color:lightblue;'>I</td>";
         break;
      case 4:
         $text = "<td align='center' style='background-color:pink;'>A</td>";
         break;
      case 5:
      default:
         $text = "<td></td>";
         break;
   }

   return $text;
}
?>
<?= $this->endSection() ?>