<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
   <div class="container-fluid">
      <div class="row">
         <div class="col-lg-12">
            <div class="card bg-dark">
               <div class="card-body">
                  <div class="row justify-content-between">
                     <div class="col-12">
                        <div class="pt-1 pl-1">
                           <h4><b>Daftar Kelas</b></h4>
                        </div>
                     </div>
                  </div>

                  <div class="card-body py-1 px-1">
                     <div class="row">
                        <?php foreach ($kelas as $value) : ?>
                           <?php
                           $idKelas = $value['id_kelas'];
                           $namaKelas =  $value['kelas'];
                           ?>
                           <div class="col-lg-2 col-md-2 col-xl-2">
                              <button id="kelas-<?= $idKelas; ?>" onclick="getSiswa(<?= $idKelas; ?>, '<?= $namaKelas; ?>')" class="btn btn-info w-100">
                                 <?= $namaKelas; ?>
                              </button>
                           </div>
                        <?php endforeach; ?>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-4">
                        <div class="pt-3 py-1 pb-1">
                           <h4><b>Tanggal</b></h4>
                           <input class="text-light form-control" type="date" name="tanggal" id="tanggal" value="<?= date('Y-m-d'); ?>" onchange="onDateChange()">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="card bg-dark" id="dataSiswa">
         <div class="card-body">
            <div class="row justify-content-between">
               <div class="col">
                  <div class="pt-1 pl-1">
                     <h4><b>Presensi Siswa</b></h4>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Modal ubah kehadiran -->
   <div class="modal fade" id="ubahModal" tabindex="-1" aria-labelledby="modalUbahKehadiran" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content bg-dark">
            <div class="modal-header">
               <h5 class="modal-title text-light" id="modalUbahKehadiran"><b>Ubah Presensi</b></h5>
               <button type="button" class="close bg-danger" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div id="modalFormUbahSiswa"></div>
         </div>
      </div>
   </div>
</div>
<script>
   var lastIdKelas;
   var lastKelas;

   function onDateChange() {
      if (lastIdKelas != null && lastKelas != null) getSiswa(lastIdKelas, lastKelas);
   }

   function getSiswa(idKelas, kelas) {
      var tanggal = $('#tanggal').val();

      updateBtn(idKelas);

      jQuery.ajax({
         url: "<?= base_url('/admin/absen-siswa'); ?>",
         type: 'post',
         data: {
            'kelas': kelas,
            'id_kelas': idKelas,
            'tanggal': tanggal
         },
         success: function(response, status, xhr) {
            // console.log(status);
            $('#dataSiswa').html(response);

            // $('html, body').animate({
            //   scrollTop: $("#dataSiswa").offset().top
            // }, 500);
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            $('#dataSiswa').html(thrown);
         }
      });

      lastIdKelas = idKelas;
      lastKelas = kelas;
   }

   function updateBtn(id_btn) {
      for (let index = 1; index <= <?= count($kelas); ?>; index++) {
         if (index != id_btn) {
            $('#kelas-' + index).removeClass('btn-primary');
            $('#kelas-' + index).addClass('btn-info');
         } else {
            $('#kelas-' + index).removeClass('btn-info');
            $('#kelas-' + index).addClass('btn-primary');
         }
      }
   }

   function getDataKehadiran(idPresensi, idSiswa) {
      jQuery.ajax({
         url: "<?= base_url('/admin/absen-siswa/kehadiran'); ?>",
         type: 'post',
         data: {
            'id_presensi': idPresensi,
            'id_siswa': idSiswa
         },
         success: function(response, status, xhr) {
            // console.log(status);
            $('#modalFormUbahSiswa').html(response);
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            $('#modalFormUbahSiswa').html(thrown);
         }
      });
   }

   function ubahKehadiran() {
      var tanggal = $('#tanggal').val();

      var form = $('#formUbah').serializeArray();

      form.push({
         name: 'tanggal',
         value: tanggal
      });

      console.log(form);

      jQuery.ajax({
         url: "<?= base_url('/admin/absen-siswa/edit'); ?>",
         type: 'post',
         data: form,
         success: function(response, status, xhr) {
            // console.log(status);

            if (response['status']) {
               getSiswa(lastIdKelas, lastKelas);
               alert('Berhasil ubah kehadiran : ' + response['nama_siswa']);
            } else {
               alert('Gagal ubah kehadiran : ' + response['nama_siswa']);
            }
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            alert('Gagal ubah kehadiran\n' + thrown);
         }
      });
   }
</script>
<?= $this->endSection() ?>