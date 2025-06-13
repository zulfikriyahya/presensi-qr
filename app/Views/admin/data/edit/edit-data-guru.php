<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
   <div class="container-fluid">
      <div class="row">
         <div class="col-lg-12 col-md-12">
            <div class="card bg-dark">
               <div class="card-header card-header-warning">
                  <h4 class="card-title"><b>Form Edit Guru</b></h4>

               </div>
               <div class="card-body mx-2 my-3">

                  <?php if (session()->getFlashdata('msg')) : ?>
                     <div class="pb-2">
                        <div class="alert alert-<?= session()->getFlashdata('error') == true ? 'danger' : 'success'  ?> ">
                           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <i class="material-icons">close</i>
                           </button>
                           <?= session()->getFlashdata('msg') ?>
                        </div>
                     </div>
                  <?php endif; ?>

                  <form action="<?= base_url('admin/guru/edit'); ?>" method="post">
                     <?= csrf_field() ?>
                     <?php $validation = \Config\Services::validation(); ?>

                     <input type="hidden" name="id" value="<?= $data['id_guru'] ?>">

                     <div class="form-group mt-4">
                        <label for="nuptk">NIK/NIP/NUPTK</label>
                        <input type="text" id="nuptk" class="text-light form-control <?= $validation->getError('nuptk') ? 'is-invalid' : ''; ?>" name="nuptk" placeholder="123456789012345678" value="<?= old('nuptk') ?? $oldInput['nuptk'] ?? $data['nuptk'] ?>">
                        <div class="invalid-feedback">
                           <?= $validation->getError('nuptk'); ?>
                        </div>
                     </div>

                     <div class="form-group mt-4">
                        <label for="nama">Nama Lengkap</label>
                        <input type="text" id="nama" class="text-light form-control <?= $validation->getError('nama') ? 'is-invalid' : ''; ?>" name="nama" placeholder="Nama Guru/Staf" value="<?= old('nama') ?? $oldInput['nama'] ?? $data['nama_guru'] ?>" required>
                        <div class="invalid-feedback">
                           <?= $validation->getError('nama'); ?>
                        </div>
                     </div>

                     <div class="form-group mt-2">
                        <label for="jk">Jenis Kelamin</label>
                        <?php
                        $jenisKelamin = (old('jk') ?? $oldInput['jk'] ?? $data['jenis_kelamin']);
                        $l = $jenisKelamin == 'Laki-laki' || $jenisKelamin == '1' ? 'checked' : '';
                        $p = $jenisKelamin == 'Perempuan' || $jenisKelamin == '2' ? 'checked' : '';
                        ?>
                        <div class="form-check form-control pt-0 mb-1 <?= $validation->getError('jk') ? 'is-invalid' : ''; ?>">
                           <div class="row">
                              <div class="col-auto">
                                 <div class="row">
                                    <div class="col-auto pr-1">
                                       <input class="form-check" type="radio" name="jk" id="laki" value="1" <?= $l; ?>>
                                    </div>
                                    <div class="col">
                                       <label class="form-check-label pl-0 pt-1" for="laki">
                                          <h6 class="text-light">Laki-laki</h5>
                                       </label>
                                    </div>
                                 </div>
                              </div>
                              <div class="col">
                                 <div class="row">
                                    <div class="col-auto pr-1">
                                       <input class="form-check" type="radio" name="jk" id="perempuan" value="2" <?= $p; ?>>
                                    </div>
                                    <div class="col">
                                       <label class="form-check-label pl-0 pt-1" for="perempuan">
                                          <h6 class="text-light">Perempuan</h6>
                                       </label>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="invalid-feedback">
                           <?= $validation->getError('jk'); ?>
                        </div>
                     </div>

                     <div class="form-group mt-4">
                        <label for="alamat">Alamat</label>
                        <input type="text" id="alamat" name="alamat" class="text-light form-control" value="<?= old('alamat') ?? $oldInput['alamat']  ?? $data['alamat'] ?>">
                     </div>

                     <div class="form-group mt-4">
                        <label for="hp">No HP</label>
                        <input type="number" id="hp" name="no_hp" class="text-light form-control <?= $validation->getError('no_hp') ? 'is-invalid' : ''; ?>" placeholder="08**********" value="<?= old('no_hp') ?? $oldInput['no_hp']  ?? $data['no_hp'] ?>" required>
                        <div class="invalid-feedback">
                           <?= $validation->getError('no_hp'); ?>
                        </div>
                     </div>

                     <button type="submit" class="btn btn-warning btn-block">Simpan</button>
                  </form>

                  <hr>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?= $this->endSection() ?>