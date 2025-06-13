<?php
namespace Config;
use CodeIgniter\Router\RouteCollection;
$routes = Services::routes();
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->get('/', 'Scan::index');
$routes->group('scan', function (RouteCollection $routes) {
   $routes->get('', 'Scan::index');
   $routes->get('masuk', 'Scan::index/Masuk');
   $routes->get('pulang', 'Scan::index/Pulang');
   $routes->post('cek', 'Scan::cekKode');
});
// Admin
$routes->group('admin', function (RouteCollection $routes) {
   // Admin dashboard
   $routes->get('', 'Admin\Dashboard::index');
   $routes->get('dashboard', 'Admin\Dashboard::index');
   // Kelas
   $routes->group('kelas', ['namespace' => 'App\Controllers\Admin'], function ($routes) {
      $routes->get('/', 'KelasController::index');
      $routes->get('tambah', 'KelasController::tambahKelas');
      $routes->post('tambahKelasPost', 'KelasController::tambahKelasPost');
      $routes->get('edit/(:any)', 'KelasController::editKelas/$1');
      $routes->post('editKelasPost', 'KelasController::editKelasPost');
      $routes->post('deleteKelasPost', 'KelasController::deleteKelasPost');
      $routes->post('list-data', 'KelasController::listData');
   });
   // Jurusan
   $routes->group('jurusan', ['namespace' => 'App\Controllers\Admin'], function ($routes) {
      $routes->get('/', 'JurusanController::index');
      $routes->get('tambah', 'JurusanController::tambahJurusan');
      $routes->post('tambahJurusanPost', 'JurusanController::tambahJurusanPost');
      $routes->get('edit/(:any)', 'JurusanController::editJurusan/$1');
      $routes->post('editJurusanPost', 'JurusanController::editJurusanPost');
      $routes->post('deleteJurusanPost', 'JurusanController::deleteJurusanPost');
      $routes->post('list-data', 'JurusanController::listData');
   });
   // admin lihat data siswa
   $routes->get('siswa', 'Admin\DataSiswa::index');
   $routes->post('siswa', 'Admin\DataSiswa::ambilDataSiswa');
   // admin tambah data siswa
   $routes->get('siswa/create', 'Admin\DataSiswa::formTambahSiswa');
   $routes->post('siswa/create', 'Admin\DataSiswa::saveSiswa');
   // admin edit data siswa
   $routes->get('siswa/edit/(:any)', 'Admin\DataSiswa::formEditSiswa/$1');
   $routes->post('siswa/edit', 'Admin\DataSiswa::updateSiswa');
   // admin hapus data siswa
   $routes->delete('siswa/delete/(:any)', 'Admin\DataSiswa::delete/$1');
   $routes->get('siswa/bulk', 'Admin\DataSiswa::bulkPostSiswa');
   // POST Data Siswa
   $routes->group('siswa', ['namespace' => 'App\Controllers\Admin'], function ($routes) {
      $routes->post('downloadCSVFilePost', 'DataSiswa::downloadCSVFilePost');
      $routes->post('generateCSVObjectPost', 'DataSiswa::generateCSVObjectPost');
      $routes->post('importCSVItemPost', 'DataSiswa::importCSVItemPost');
      $routes->post('deleteSelectedSiswa', 'DataSiswa::deleteSelectedSiswa');
   });
   // admin lihat data guru
   $routes->get('guru', 'Admin\DataGuru::index');
   $routes->post('guru', 'Admin\DataGuru::ambilDataGuru');
   // admin tambah data guru
   $routes->get('guru/create', 'Admin\DataGuru::formTambahGuru');
   $routes->post('guru/create', 'Admin\DataGuru::saveGuru');
   // admin edit data guru
   $routes->get('guru/edit/(:any)', 'Admin\DataGuru::formEditGuru/$1');
   $routes->post('guru/edit', 'Admin\DataGuru::updateGuru');
   // admin hapus data guru
   $routes->delete('guru/delete/(:any)', 'Admin\DataGuru::delete/$1');
   // admin lihat data absen siswa
   $routes->get('absen-siswa', 'Admin\DataAbsenSiswa::index');
   $routes->post('absen-siswa', 'Admin\DataAbsenSiswa::ambilDataSiswa'); // ambil siswa berdasarkan kelas dan tanggal
   $routes->post('absen-siswa/kehadiran', 'Admin\DataAbsenSiswa::ambilKehadiran'); // ambil kehadiran siswa
   $routes->post('absen-siswa/edit', 'Admin\DataAbsenSiswa::ubahKehadiran'); // ubah kehadiran siswa
   // admin lihat data absen guru
   $routes->get('absen-guru', 'Admin\DataAbsenGuru::index');
   $routes->post('absen-guru', 'Admin\DataAbsenGuru::ambilDataGuru'); // ambil guru berdasarkan tanggal
   $routes->post('absen-guru/kehadiran', 'Admin\DataAbsenGuru::ambilKehadiran'); // ambil kehadiran guru
   $routes->post('absen-guru/edit', 'Admin\DataAbsenGuru::ubahKehadiran'); // ubah kehadiran guru
   // admin generate QR
   $routes->get('generate', 'Admin\GenerateQR::index');
   $routes->post('generate/siswa-by-kelas', 'Admin\GenerateQR::getSiswaByKelas'); // ambil siswa berdasarkan kelas
   // Generate QR
   $routes->post('generate/siswa', 'Admin\QRGenerator::generateQrSiswa');
   $routes->post('generate/guru', 'Admin\QRGenerator::generateQrGuru');
   // Download QR
   $routes->get('qr/siswa/download', 'Admin\QRGenerator::downloadAllQrSiswa');
   $routes->get('qr/siswa/(:any)/download', 'Admin\QRGenerator::downloadQrSiswa/$1');
   $routes->get('qr/guru/download', 'Admin\QRGenerator::downloadAllQrGuru');
   $routes->get('qr/guru/(:any)/download', 'Admin\QRGenerator::downloadQrGuru/$1');
   // admin buat laporan
   $routes->get('laporan', 'Admin\GenerateLaporan::index');
   $routes->post('laporan/siswa', 'Admin\GenerateLaporan::generateLaporanSiswa');
   $routes->post('laporan/guru', 'Admin\GenerateLaporan::generateLaporanGuru');
   // superadmin lihat data petugas
   $routes->get('petugas', 'Admin\DataPetugas::index');
   $routes->post('petugas', 'Admin\DataPetugas::ambilDataPetugas');
   // superadmin tambah data petugas
   $routes->get('petugas/register', 'Admin\DataPetugas::registerPetugas');
   // superadmin edit data petugas
   $routes->get('petugas/edit/(:any)', 'Admin\DataPetugas::formEditPetugas/$1');
   $routes->post('petugas/edit', 'Admin\DataPetugas::updatePetugas');
   // superadmin hapus data petugas
   $routes->delete('petugas/delete/(:any)', 'Admin\DataPetugas::delete/$1');
   // Settings
   $routes->group('general-settings', ['namespace' => 'App\Controllers\Admin'], function ($routes) {
      $routes->get('/', 'GeneralSettings::index');
      $routes->post('update', 'GeneralSettings::generalSettingsPost');
   });
});
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
   require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
