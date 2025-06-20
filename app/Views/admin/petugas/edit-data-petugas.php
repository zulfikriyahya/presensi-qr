<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
   <div class="container-fluid">
      <div class="row">
         <div class="col-lg-12 col-md-12">
            <div class="card bg-dark">
               <div class="card-header card-header-warning">
                  <h4 class="card-title"><b>Form Edit Profil</b></h4>

               </div>
               <div class="card-body mx-2 my-3">

                  <form action="<?= base_url('admin/petugas/edit'); ?>" method="post">
                     <?= csrf_field() ?>
                     <?php $validation = \Config\Services::validation(); ?>

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

                     <input type="hidden" name="id" value="<?= $data['id']; ?>">

                     <div class="form-group mt-4">
                        <label for="username">Username</label>
                        <input type="text" id="username" class="text-light form-control <?= $validation->getError('username') ? 'is-invalid' : ''; ?>" name="username" placeholder="username123" value="<?= old('username') ?? $oldInput['username'] ?? $data['username'] ?>">
                        <div class="invalid-feedback">
                           <?= $validation->getError('username'); ?>
                        </div>
                     </div>

                     <div class="form-group mt-4">
                        <label for="email">Email</label>
                        <input type="email" id="email" class="text-light form-control <?= $validation->getError('email') ? 'is-invalid' : ''; ?>" name="email" placeholder="email@example.com" value="<?= old('email') ?? $oldInput['email'] ?? $data['email'] ?>">
                        <div class="invalid-feedback">
                           <?= $validation->getError('email'); ?>
                        </div>
                     </div>

                     <div class="form-group mt-4">
                        <label for="password">Password baru</label>
                        <input type="password" id="password" class="text-light form-control <?= $validation->getError('password') ? 'is-invalid' : ''; ?>" name="password">
                        <div class="invalid-feedback">
                           <?= $validation->getError('password'); ?>
                        </div>
                     </div>

                     <label for="role">Peran</label>
                     <select class="custom-select <?= $validation->getError('role') ? 'is-invalid' : ''; ?>" id="role" name="role">
                        <option value="">Pilih Peran</option>
                        <option value="0" <?= old('role') ?? $oldInput['role'] ?? $data['is_superadmin'] == "0" ? 'selected' : ''; ?>>
                           Petugas
                        </option>
                        <option value="1" <?= old('role') ?? $oldInput['role'] ?? $data['is_superadmin'] ?? '' == "1" ? 'selected' : ''; ?>>
                           Super Admin
                        </option>
                     </select>
                     <div class="invalid-feedback">
                        <?= $validation->getError('role'); ?>
                     </div>

                     <button type="submit" class="btn btn-warning btn-block mt-3">Simpan</button>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?= $this->endSection() ?>