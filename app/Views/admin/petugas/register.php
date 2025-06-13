<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card bg-dark">
                    <div class="card-header card-header-warning mb-48">
                        <h4 class="card-title">Buat Akun</h4>
                        <p class="card-category">Buat akun petugas</p>
                    </div>
                    <div class="card-body mx-2 my-3">

                        <?= view('Myth\Auth\Views\_message_block') ?>

                        <form action="<?= url_to('register') ?>" method="post">
                            <?= csrf_field() ?>

                            <div class="form-group mt-4">
                                <label for="email"><?= lang('Auth.email') ?></label>
                                <input type="email" id="email" class="text-light form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" name="email" aria-describedby="emailHelp" placeholder="adm@mtsn1pandeglang.sch.id" value="<?= old('email') ?>">
                                <?php if (session('errors.email')) : ?>
                                    <div class="invalid-feedback">
                                        <?= session('errors.email') ?>
                                    </div>
                                <?php endif ?>
                            </div>

                            <div class="form-group mt-4">
                                <label for="username"><?= lang('Auth.username') ?></label>
                                <input type="text" id="username" class="text-light form-control <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" placeholder="zulfikriyahya" value="<?= old('username') ?>">
                                <div class="invalid-feedback">
                                    <?= session('errors.username') ?>
                                </div>
                            </div>

                            <div class="form-group mt-4">
                                <label for="password"><?= lang('Auth.password') ?></label>
                                <input type="password" id="password" name="password" class="text-light form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" autocomplete="off">
                                <div class="invalid-feedback">
                                    <?= session('errors.password') ?>
                                </div>
                            </div>

                            <div class="form-group mt-4">
                                <label for="pass_confirm"><?= lang('Auth.repeatPassword') ?></label>
                                <input type="password" id="pass_confirm" name="pass_confirm" class="text-light form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" autocomplete="off">
                                <div class="invalid-feedback">
                                    <?= session('errors.pass_confirm') ?>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-warning btn-block"><?= lang('Auth.register') ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>