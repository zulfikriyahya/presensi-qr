<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
    <div class="container-fluid">
        <!-- REKAP JUMLAH DATA -->
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="card bg-dark card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <a href="<?= base_url('admin/siswa'); ?>" class="text-light">
                                <i class="material-icons">person</i>
                            </a>
                        </div>
                        <p class="card-category">Total Siswa</p>
                        <h3 class="text-light card-title"><?= count($siswa) . " Orang"; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-warning">check</i>
                            Terdaftar
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="card bg-dark card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <a href="<?= base_url('admin/guru'); ?>" class="text-white">
                                <i class="material-icons">person_4</i>
                            </a>
                        </div>
                        <p class="card-category">Total Guru & Staf</p>
                        <h3 class="text-light card-title"><?= count($guru) . " Orang"; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-warning">check</i>
                            Terdaftar
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="card bg-dark card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <a href="<?= base_url('admin/kelas'); ?>" class="text-light">
                                <i class="material-icons">store</i>
                            </a>
                        </div>
                        <p class="card-category">Total Kelas</p>
                        <h3 class="text-light card-title"><?= count($kelas) . " Kelas"; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-warning">store</i>
                            <?= $generalSettings->school_name; ?>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-danger card-header-icon">
                        <div class="card-icon">
                            <a href="<?= base_url('admin/petugas'); ?>" class="text-white">
                                <i class="material-icons">settings</i>
                            </a>
                        </div>
                        <p class="card-category">Jumlah petugas</p>
                        <h3 class="card-title"><?= count($petugas); ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">person</i>
                            Petugas dan Administrator
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card bg-dark">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title"><b>Presensi Siswa Hari Ini</b></h4>
                        <p class="card-category"><?= $dateNow; ?></p>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Hadir</b></h4>
                                <h3><?= $jumlahKehadiranSiswa['hadir']; ?></h3>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Sakit</b></h4>
                                <h3><?= $jumlahKehadiranSiswa['sakit']; ?></h3>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Izin</b></h4>
                                <h3><?= $jumlahKehadiranSiswa['izin']; ?></h3>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Alfa</b></h4>
                                <h3><?= $jumlahKehadiranSiswa['alfa']; ?></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-dark">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title"><b>Presensi Guru/Staf Hari Ini</b></h4>
                        <p class="card-category"><?= $dateNow; ?></p>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Hadir</b></h4>
                                <h3><?= $jumlahKehadiranGuru['hadir']; ?></h3>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Sakit</b></h4>
                                <h3><?= $jumlahKehadiranGuru['sakit']; ?></h3>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Izin</b></h4>
                                <h3><?= $jumlahKehadiranGuru['izin']; ?></h3>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-warning"><b>Alfa</b></h4>
                                <h3><?= $jumlahKehadiranGuru['alfa']; ?></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- GRAFIK CHART -->
        <div class="row">
            <div class="col-md-6">
                <div class="card bg-dark card-chart">
                    <div class="card-header card-header-warning">
                        <div class="ct-chart" id="kehadiranSiswa"></div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Grafik kehadiran siswa</h4>
                        <p class="card-category">Jumlah kehadiran siswa dalam 7 hari terakhir</p>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-warning">checklist</i> <a class="text-warning" href="<?= base_url('admin/absen-siswa'); ?>">Lihat data</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-dark card-chart">
                    <div class="card-header card-header-warning">
                        <div class="ct-chart" id="kehadiranGuru"></div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Grafik kehadiran guru/staf</h4>
                        <p class="card-category">Jumlah kehadiran guru/staf dalam 7 hari terakhir</p>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-warning">checklist</i> <a class="text-warning" href="<?= base_url('admin/absen-guru'); ?>">Lihat data</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Chartist JS -->
<script src="<?= base_url('assets/js/plugins/chartist.min.js') ?>"></script>
<script>
    $(document).ready(function() {
        initDashboardPageCharts();
    });

    function initDashboardPageCharts() {

        if ($('#kehadiranSiswa').length != 0) {
            /* ----------==========     Chart tingkat kehadiran siswa    ==========---------- */
            const dataKehadiranSiswa = [<?php foreach ($grafikKehadiranSiswa as $value) echo "$value,"; ?>];

            const chartKehadiranSiswa = {
                labels: [
                    <?php
                    foreach ($dateRange as  $value) {
                        echo "'$value',";
                    }
                    ?>
                ],
                series: [dataKehadiranSiswa]
            };

            var highestData = 0;

            dataKehadiranSiswa.forEach(e => {
                if (e >= highestData) {
                    highestData = e;
                }
            })

            const optionsChart = {
                lineSmooth: Chartist.Interpolation.cardinal({
                    tension: 0
                }),
                low: 0,
                high: highestData + (highestData / 4),
                chartPadding: {
                    top: 0,
                    right: 0,
                    bottom: 0,
                    left: 0
                }
            }

            var kehadiranSiswaChart = new Chartist.Line('#kehadiranSiswa', chartKehadiranSiswa, optionsChart);

            md.startAnimationForLineChart(kehadiranSiswaChart);
        }

        if ($('#kehadiranGuru').length != 0) {
            /* ----------==========     Chart tingkat kehadiran guru    ==========---------- */
            const dataKehadiranGuru = [<?php foreach ($grafikkKehadiranGuru as $value) echo "$value,"; ?>];

            const chartKehadiranGuru = {
                labels: [
                    <?php
                    foreach ($dateRange as  $value) {
                        echo "'$value',";
                    }
                    ?>
                ],
                series: [dataKehadiranGuru]
            };

            var highestData = 0;

            dataKehadiranGuru.forEach(e => {
                if (e >= highestData) {
                    highestData = e;
                }
            })

            const optionsChart = {
                lineSmooth: Chartist.Interpolation.cardinal({
                    tension: 0
                }),
                low: 0,
                high: highestData + (highestData / 4),
                chartPadding: {
                    top: 0,
                    right: 0,
                    bottom: 0,
                    left: 0
                }
            }

            var kehadiranGuruChart = new Chartist.Line('#kehadiranGuru', chartKehadiranGuru, optionsChart);

            md.startAnimationForLineChart(kehadiranGuruChart);
        }
    }
</script>
<?= $this->endSection() ?>