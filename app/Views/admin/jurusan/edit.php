<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
<div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <?= view('admin/_messages'); ?>
        <div class="card bg-dark">
          <div class="card-header card-header-warning">
            <h4 class="card-title"><b>Form Edit Jurusan</b></h4>
          </div>
          <div class="card-body mx-2 my-3">

            <form action="<?= base_url('admin/jurusan/editJurusanPost'); ?>" method="post">
              <?= csrf_field() ?>
              <input type="hidden" name="id" value="<?= esc($jurusan->id); ?>">
              <input type="hidden" name="back_url" value="<?= currentFullURL(); ?>">
<div class="row">
              <div class="col-8">
                <label for="jurusan">Nama Jurusan</label>
                <input type="text" id="jurusan" class="text-light form-control <?= invalidFeedback('jurusan') ? 'is-invalid' : ''; ?>" name="jurusan" placeholder="Teknik Komputer dan Jaringan (TKJ)" value="<?= old('jurusan') ?? $jurusan->jurusan  ?? '' ?>">
                <div class="invalid-feedback">
                  <?= invalidFeedback('jurusan'); ?>
                </div>
              </div>
<div class="col-4">
              <button type="submit" class="btn btn-warning btn-block mt-4">Simpan</button>
              </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?= $this->endSection() ?>