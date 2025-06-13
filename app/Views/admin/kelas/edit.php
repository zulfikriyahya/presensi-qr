<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="card bg-dark">
          <div class="card-header card-header-warning">
            <h4 class="card-title"><b>Form Edit Kelas</b></h4>
          </div>
          <div class="card-body mx-2 my-3">

          <form action="<?= base_url('admin/kelas/editKelasPost'); ?>" method="post">
              <?= csrf_field() ?>
              <input type="hidden" name="id" value="<?= esc($kelas->id_kelas); ?>">
              <input type="hidden" name="back_url" value="<?= currentFullURL(); ?>">
              
              <div class="row">
              <div class="col-8">
                <label for="kelas">Kelas/Rombel</label>
                <input type="text" id="kelas" class="text-light form-control <?= invalidFeedback('kelas') ? 'is-invalid' : ''; ?>" name="kelas" placeholder="Contoh: X TKJ 1" , value="<?= old('kelas') ?? $kelas->kelas  ?? '' ?>" required>
                <div class="invalid-feedback">
                  <?= invalidFeedback('kelas'); ?>
                </div>
              </div>
              
                <div class="col-4">
                  <label for="id_jurusan">Jurusan</label>
                  <select class="custom-select <?= invalidFeedback('id_jurusan') ? 'is-invalid' : ''; ?>" id="id_jurusan" name="id_jurusan">
                    <option value="">--Pilih Jurusan--</option>
                    <?php foreach ($jurusan as $value) : ?>
                      <option value="<?= $value['id']; ?>" <?= $kelas->id_jurusan == $value['id'] ? 'selected' : ''; ?>>
                        <?= $value['jurusan']; ?>
                      </option>
                    <?php endforeach; ?>
                  </select>
                  <div class="invalid-feedback">
                    <?= invalidFeedback('id_jurusan'); ?>
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-warning btn-block mt-4">Simpan</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?= $this->endSection() ?>