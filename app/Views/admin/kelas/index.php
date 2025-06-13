<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <?= view('admin/_messages'); ?>
        <div class="row">
          <div class="col-12 col-xl-6">
              
            <div class="card bg-dark">
              <div class="card-header card-header-tabs card-header-warning">
                <div class="nav-tabs-navigation">
                    
                    
                    <div class="row">
                        <div class="col">
                           <h4 class="card-title"><b>Daftar Kelas</b></h4>
                           <p class="card-category">Tahun Pelajaran <?= $generalSettings->school_year; ?></p>
                        </div>
                        
                    <div class="col-auto row mr-1">
                      <div class="col-12 col-sm-auto nav nav-tabs">
                        <a class="btn btn-info pull-right" id="tabBtn" href="<?= base_url('admin/kelas/tambah'); ?>">
                          <i class="material-icons">add</i> Tambah
                          <div class="ripple-container"></div>
                        </a>
                      </div>
                      
                      <!--<div class="col-12 col-sm-auto nav nav-tabs">-->
                      <!--  <a class="btn btn-success pull-right" id="refreshBtn" onclick="fetchKelasJurusanData('kelas', '#dataKelas')" href="javascript:void(0)">-->
                      <!--    <i class="material-icons">refresh</i> Refresh-->
                      <!--  </a>-->
                      <!--</div>-->
                    </div>
                    
                  </div>
                </div>
              </div>
              <div class="card-data" id="dataKelas">
              </div>
            </div>
          </div>
          
          <div class="col-12 col-xl-6">
            <div class="card bg-dark">
              <div class="card-header card-header-tabs card-header-warning">
                <div class="nav-tabs-navigation">
                  <div class="row">
                    <div class="col">
                      <h4 class="card-title"><b>Daftar Jurusan</b></h4>
                      <p class="card-category">Tahun Pelajaran <?= $generalSettings->school_year; ?></p>
                    </div>
                    <div class="col-auto row mr-1">
                      <div class="col-12 col-sm-auto nav nav-tabs">
                        <a class="btn btn-info pull-right" id="tabBtn" href="<?= base_url('admin/jurusan/tambah'); ?>">
                          <i class="material-icons">add</i> Tambah
                          <div class="ripple-container"></div>
                        </a>
                      </div>
                      
                      <!--<div class="col-12 col-sm-auto nav nav-tabs">-->
                      <!--  <a class="btn btn-success pull-right" id="refreshBtn2" onclick="fetchKelasJurusanData('jurusan', '#dataJurusan')" href="javascript:void(0)">-->
                      <!--    <i class="material-icons">refresh</i> Refresh-->
                      <!--  </a>-->
                      <!--</div>-->
                    </div>

                  </div>
                </div>
              </div>
              <div class="card-data" id="dataJurusan">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    fetchKelasJurusanData('kelas', '#dataKelas');
    fetchKelasJurusanData('jurusan', '#dataJurusan');
  });
  
</script>
<?= $this->endSection() ?>