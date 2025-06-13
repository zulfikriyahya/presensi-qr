<?= $this->extend('templates/starting_page_layout'); ?>

<?= $this->section('content'); ?>

<div class="main-panel">
   <div class="content align-content-center">
      <div class="container-fluid">

         <div class="row">

            <!-- Left Sidebar -->
            <div class="col-lg-4">
            </div>

            <!-- Main Content -->
            <div class="col-lg-4">
               <div class="card bg-dark text-light">
                  <div class="col-12 mx-0 card-header card-header-warning rounded-top">
                     <div class="row">
                        <div class="col">
                           <div class="text-header">
                              <div class="card-title text-center text-dark" style="font-size: 2.5rem ; font-weight: bolder;"><strong>
                                    <i class="material-icons font-weight-bolder" style="font-size: 2rem;">qr_code_scanner</i>
                                    LOGIN PRESENSI
                                 </strong></div>
                           </div>
                        </div>
                     </div>
                  </div>

                  <!-- Content Body -->
                  <div class="card-body">
                     <div class="row">
                        <div class="col-12">
                           <?= view('\App\Views\admin\_message_block') ?>
                           <form action="<?= url_to('login') ?>" method="post">
                              <?= csrf_field() ?>

                              <div class="row">
                                 <div class="col-8">
                                    <?php if ($config->validFields === ['email']) : ?>

                                       <div class="form-group">
                                          <label class="bmd-label-floating"><?= lang('Auth.email') ?></label>
                                          <input type="email" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" autofocus>
                                          <div class="invalid-feedback">
                                             <?= session('errors.login') ?>
                                          </div>
                                       </div>

                                    <?php else : ?>
                                       <div class="form-group">
                                          <label for="email"><strong>Alamat Email</strong></label>
                                          <input type="text"
                                             id="email"
                                             class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?> text-light"
                                             name="login"
                                             autofocus>
                                          <div class="invalid-feedback">
                                             <?= session('errors.login') ?>
                                          </div>
                                       </div>

                                    <?php endif; ?>
                                 </div>
                                 <div class="col-4">
                                    <div class="form-group">
                                       <label for="password"><strong>Kata Sandi</strong></label>
                                       <input type="password"
                                          id="password"
                                          name="password"
                                          class="text-light form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>">
                                       <div class="invalid-feedback">
                                          <?= session('errors.password') ?>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <?php if ($config->allowRemembering) : ?>
                                 <div class="form-check">
                                    <label class="form-check-label">
                                       <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
                                       <?= lang('Auth.rememberMe') ?>
                                    </label>
                                 </div>
                              <?php endif; ?>

                              <button type="submit" class="btn btn-warning btn-block mt-4">
                                 <strong class="font-weight-bolder" style="font-size: 1rem;"><?= lang('Auth.loginAction') ?>
                                    <i class="material-icons right">login</i></strong>
                              </button>

                              <?php if ($config->activeResetter) : ?>
                                 <p><a href="<?= url_to('forgot') ?>"><?= lang('Auth.forgotYourPassword') ?></a></p>
                              <?php endif; ?>
                              <div class="clearfix"></div>
                           </form>
                        </div>
                     </div>
                  </div>
                  <hr class="bg-info" style="height: 2px;">
                  
                  <a href="https://mtsn1pandeglang.sch.id" target="_blank" class="text-center text-gray">
                     <strong>
                        <?= '&copy; 2024 - ' . date('Y') . ' MTS NEGERI 1 PANDEGLANG'; ?>
                     </strong>
                     <br>
                        <a href=" https://instagram.com/zulfikriyahya_" target="_blank" class="text-info font-weight-light text-center mb-3" style="font-size: 0.8rem;">
                           <i class="material-icons text-center">terminal</i> Tim Teknis
                         <b> | </b>All Right Reserved.</a>
                  </div>
                   
               </div>
            </div>

            <!-- Right Sidebar -->
            <div class="col-lg-4">
            </div>

         </div>

      </div>
   </div>
</div>
<!-- <?= $this->endSection(); ?> -->