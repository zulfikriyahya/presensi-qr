<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <?= view('admin/_messages'); ?>
                <div class="card bg-dark">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title"><b>Pengaturan</b></h4>
                    </div>
                    <div class="card-body mx-2 my-3">

                        <form action="<?= base_url('admin/general-settings/update'); ?>" method="post" enctype="multipart/form-data">
                            <?= csrf_field() ?>
                            <div class="form-group mt-4">
                                <label for="school_name">Nama Sekolah/Madrasah</label>
                                <input type="text" id="school_name" class="text-light form-control <?= invalidFeedback('school_name') ? 'is-invalid' : ''; ?>" name="school_name" placeholder="MTS NEGERI 1 PANDEGLANG" value="<?= $generalSettings->school_name; ?>" required>
                                <div class="invalid-feedback">
                                    <?= invalidFeedback('school_name'); ?>
                                </div>
                            </div>

                            <div class="form-group mt-4">
                                <label for="school_year">Tahun Pelajaran</label>
                                <input type="text" id="school_year" class="text-light form-control <?= invalidFeedback('school_year') ? 'is-invalid' : ''; ?>" name="school_year" placeholder="2024/2025" value="<?= $generalSettings->school_year; ?>" required>
                                <div class="invalid-feedback">
                                    <?= invalidFeedback('school_year'); ?>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-7">
                                    <div class="form-group mt-4">
                                        <label for="copyright">Footer Copyright</label>
                                        <input type="text" id="copyright" class="text-light form-control <?= invalidFeedback('copyright') ? 'is-invalid' : ''; ?>" name="copyright" placeholder="@ 2024 - 2025 MTSN 1 PANDEGLANG" value="<?= $generalSettings->copyright; ?>" required>
                                        <div class="invalid-feedback">
                                            <?= invalidFeedback('copyright'); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label for="logo">Logo Sekolah/Madrasah</label>
                                        <div style="margin-bottom: 10px; border: 1px solid #eee; padding: 10px; width: auto;">
                                            <img id="logo" src="<?= getLogo(); ?>" alt="logo" style="max-width: 250px; max-height: 250px;">
                                        </div>
                                        <div class="display-block">
                                            <button type="button" onclick="$('#logo-upload').trigger('click');" class="btn btn-info btn-sm btn-file-upload">
                                                Unggah
                                            </button>
                                            <input type="file" id="logo-upload" name="logo" size="40" accept="image/jpg,image/jpeg,image/png,image/gif,image/svg+xml" onchange="$('#upload-file-info1').html($(this).val().replace(/.*[\/\\]/, ''));">
                                            <span class="text-sm text-secondary">(.png, .jpg, .jpeg, .gif, .svg)</span>
                                        </div>
                                        <span class='label label-warning' id="upload-file-info1"></span>
                                    </div>
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