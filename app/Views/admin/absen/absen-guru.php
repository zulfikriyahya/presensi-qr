<?= $this->extend('templates/admin_page_layout') ?>
<?= $this->section('content') ?>
<div class="content">
   <div class="container-fluid">
      <div class="card bg-dark">
         <div class="card-body">
            <div class="col-lg-6 col-md-6 py-1 px-1">
               <h4><b>Tanggal</b></h4>
               <input class="text-light form-control" type="date" name="tangal" id="tanggal" value="<?= date('Y-m-d'); ?>" onchange="getGuru()" >
            </div>
         </div>
      </div>
      <div class="card bg-dark">
         <div class="card-body">
            <div class="row">
               <div class="col-lg-12 col-md-12">
                  <div class="py-1 px-1">
                     <h4><b>Presensi Guru/Staf</b></h4>
                  </div>
               </div>
            </div>

            <div id="dataGuru">

            </div>
         </div>
      </div>
   </div>

   <!-- Modal -->
   <div class="modal fade" id="ubahModal" tabindex="-1" aria-labelledby="modalUbahKehadiran" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content bg-dark">
            <div class="modal-header">
               <h5 class="modal-title text-light" id="modalUbahKehadiran"><b>Ubah Presensi</b></h5>
               <button type="button" class="close bg-danger" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div id="modalFormUbahGuru"></div>
         </div>
      </div>
   </div>
</div>
<script>
   getGuru();

   function getGuru() {
      var tanggal = $('#tanggal').val();
      jQuery.ajax({
         url: "<?= base_url('/admin/absen-guru'); ?>",
         type: 'post',
         data: {
            'tanggal': tanggal
         },
         success: function(response, status, xhr) {
            $('#dataGuru').html(response);
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            $('#dataGuru').html(thrown);
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

      jQuery.ajax({
         url: "<?= base_url('/admin/absen-guru/edit'); ?>",
         type: 'post',
         data: form,
         success: function(response, status, xhr) {
            if (response['status']) {
               alert('Berhasil ubah kehadiran : ' + response['nama_guru']);
            } else {
               alert('Gagal ubah kehadiran : ' + response['nama_guru']);
            }
            getGuru();
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            alert('Gagal ubah kehadiran\n' + thrown);
         }
      });
   }

   function getDataKehadiran(idPresensi, idGuru) {
      jQuery.ajax({
         url: "<?= base_url('/admin/absen-guru/kehadiran'); ?>",
         type: 'post',
         data: {
            'id_presensi': idPresensi,
            'id_guru': idGuru
         },
         success: function(response, status, xhr) {
            $('#modalFormUbahGuru').html(response);
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            $('#modalFormUbahGuru').html(thrown);
         }
      });
   }
</script>
<?= $this->endSection() ?>