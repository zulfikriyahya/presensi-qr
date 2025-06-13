<?php
$context = $ctx ?? 'dashboard';
switch ($context) {
   case 'dashboard':
      $sidebarColor = 'orange';
      break;
   default:
      $sidebarColor = 'orange';
      break;
}
?>
<div class="sidebar bg-dark" data-color="<?= $sidebarColor; ?>">
   <div class="logo">
      <a href="<?= base_url('admin/dashboard'); ?>" class="text-light simple-text logo-normal" style="font-size: large; font-family: Inter, open-sans, sans-serif;">
         <img src="<?= base_url('assets/img/favicon.png'); ?>" style="width: 2rem;"></img>
         <b> PRESENSI ONLINE</b>
      </a>
   </div>

   <div class="sidebar-wrapper">
      <ul class="nav">
         <li class="nav-item <?= $context == 'dashboard' ? 'active' : ''; ?>">
            <a class="text-light nav-link" href="<?= base_url('admin/dashboard'); ?>">
               <i class="material-icons">space_dashboard</i>
               <p style="font-size: medium; font-family: Inter, open-sans, sans-serif;">Beranda</p>
            </a>
         </li>
         <hr class="bg-white" style="height: 1px;">
         <li class="nav-item <?= $context == 'kelas' ? 'active' : ''; ?>">
            <a class="text-light nav-link" href="<?= base_url('admin/kelas'); ?>">
               <i class="material-icons">class</i>
               <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Data Kelas</p>
            </a>
         </li>
         <li class="nav-item <?= $context == 'siswa' ? 'active' : ''; ?>">
            <a class="text-light nav-link" href="<?= base_url('admin/siswa'); ?>">
               <i class="material-icons">groups_2</i>
               <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Data Siswa</p>
            </a>
         </li>
         <li class="nav-item <?= $context == 'guru' ? 'active' : ''; ?>">
            <a class="text-light nav-link" href="<?= base_url('admin/guru'); ?>">
               <i class="material-icons">groups_3</i>
               <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Data Guru/Staf</p>
            </a>
         </li>
         <hr class="bg-white" style="height: 1px;">
         <li class="nav-item <?= $context == 'absen-siswa' ? 'active' : ''; ?>">
            <a class="text-light nav-link" href="<?= base_url('admin/absen-siswa'); ?>">
               <i class="material-icons">analytics</i>
               <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Presensi Siswa</p>
            </a>
         </li>
         <li class="nav-item <?= $context == 'absen-guru' ? 'active' : ''; ?>">
            <a class="text-light nav-link" href="<?= base_url('admin/absen-guru'); ?>">
               <i class="material-icons">assessment</i>
               <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Presensi Guru/Staf</p>
            </a>
         </li>
         <hr class="bg-white" style="height: 1px;">
         <?php if (user()->toArray()['is_superadmin'] ?? '0' == '1') : ?>

            <li class="nav-item <?= $context == 'qr' ? 'active' : ''; ?>">
               <a class="text-light nav-link" href="<?= base_url('admin/generate'); ?>">
                  <i class="material-icons">qr_code</i>
                  <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Generate QR Code</p>
               </a>
            </li>
            <li class="nav-item <?= $context == 'laporan' ? 'active' : ''; ?>">
               <a class="text-light nav-link" href="<?= base_url('admin/laporan'); ?>">
                  <i class="material-icons">print</i>
                  <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Generate Laporan</p>
               </a>
            </li>
            <hr class="bg-white" style="height: 1px;">
            <li class="nav-item <?= $context == 'petugas' ? 'active' : ''; ?>">
               <a class="text-light nav-link" href="<?= base_url('admin/petugas'); ?>">
                  <i class="material-icons">manage_accounts</i>
                  <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Data Petugas</p>
               </a>
            </li>
            <li class="nav-item <?= $context == 'general_settings' ? 'active' : ''; ?>">
               <a class="text-light nav-link" href="<?= base_url('admin/general-settings'); ?>">
                  <i class="material-icons">settings</i>
                  <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Pengaturan</p>
               </a>
            </li>
         <?php endif; ?>
         <li class="nav-item">
            <a class="bg-danger text-light nav-link" href="/logout">
               <i class="material-icons">logout</i>
               <p style="font-size: medium; font-family: Inter, open-sans,sans-serif;">Keluar</p>
            </a>
         </li>
      </ul>
   </div>
</div>