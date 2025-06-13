<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
   <div class="container-fluid">
      <div class="row">
         <div class="col-lg-12 col-md-12">
            <?php if (session()->getFlashdata('msg')) : ?>
               <div class="pb-2 px-3">
                  <div class="alert alert-<?= session()->getFlashdata('error') == true ? 'danger' : 'success'  ?> ">
                     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="material-icons">close</i>
                     </button>
                     <?= session()->getFlashdata('msg') ?>
                  </div>
               </div>
            <?php endif; ?>
            <a class="btn btn-info" href="<?= base_url('admin/siswa/create'); ?>">
               <i class="material-icons mr-2">add</i> Tambah
            </a>
            <a class="btn btn-success" href="<?= base_url('admin/siswa/bulk'); ?>">
               <i class="material-icons mr-2">upload</i> Impor
            </a>

            <div class="card bg-dark">
               <div class="card-body">
                  <div class="row justify-content-between">
                     <div class="col-12">
                        <div class="pt-1 pl-1">
                           <h4><b>Daftar Kelas</b></h4>
                        </div>
                     </div>
                  </div>

                  <div class="card-body px-1">
                     <div class="row">
                        <?php
                         $tempKelas = [];
                         foreach ($kelas as $value) : ?>
                            <?php if (!in_array($value['kelas'], $tempKelas)) : ?>
                               <div class="col-lg-2 col-md-2 col-xl-2">
                                   
                                  <button class="btn btn-info w-100" onclick="kelas = '<?= $value['kelas']; ?>'; trig()" href="#" data-toggle="tab"> <?= $value['kelas']; ?>
                                     <div class="ripple-container"></div>
                                  </button>
                               </div>
                               <?php array_push($tempKelas, $value['kelas']) ?>
                            <?php endif; ?>
                         <?php endforeach; ?>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="card bg-dark" id="dataSiswa">
      </div>
   </div>
</div>










<script>
   var kelas = null;
   var jurusan = null;

   getDataSiswa(kelas, jurusan);

   function trig() {
      getDataSiswa(kelas, jurusan);
   }

   function getDataSiswa(_kelas = null, _jurusan = null) {
      jQuery.ajax({
         url: "<?= base_url('/admin/siswa'); ?>",
         type: 'post',
         data: {
            'kelas': _kelas,
            'jurusan': _jurusan
         },
         success: function(response, status, xhr) {
            // console.log(status);
            $('#dataSiswa').html(response);

            // $('html, body').animate({
            //    scrollTop: $("#dataSiswa").offset().top
            // }, 500);
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            $('#dataSiswa').html(thrown);
         }
      });
   }

   document.addEventListener('DOMContentLoaded', function() {
      $("#checkAll").click(function(e) {
         console.log(e);
         $('input:checkbox').not(this).prop('checked', this.checked);
      });
   });
</script>
<?= $this->endSection() ?>