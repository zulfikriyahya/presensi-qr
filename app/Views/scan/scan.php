<?= $this->extend('templates/starting_page_layout'); ?>



<?= $this->section('content'); ?>
<?php
$oppBtn = '';

$waktu == 'Masuk' ? $oppBtn = 'pulang' : $oppBtn = 'masuk';
?>
<div class="main-panel">
   <div class="content align-content-center">
      <div class="container-fluid">

         <div class="row">

            <!-- Left Sidebar -->
            <div class="col-lg-4">
            </div>

            <!-- Main Content -->
            <div class="col-lg-4">
               <div class="card bg-dark text-white">
                  <div class="col-12 mx-0 card-header card-header-warning rounded-top">
                     <div class="row">
                        <div class="col">
                           <div class="text-header">
                              <div class="card-title text-center text-dark" style="font-size: 2.5rem ; font-weight: bolder;"><strong>
                                    <i class="material-icons font-weight-bolder" style="font-size: 2rem;">qr_code_scanner</i>
                                    <?= strtoupper($waktu); ?>
                                 </strong></div>
                           </div>
                        </div>
                     </div>
                  </div>

                  <div class="card-body rounded-bottom my-auto">
                     <div class="row">
                        <div class="col-sm-12 mb-2">
                           <div class="text-center">
                              <h4 class="d-none w-100" id="searching"><b>Antrian selanjutnya...</b></h4>
                           </div>
                           <video id="previewKamera"></video>
                        </div>

                        <div class="col-sm-12 mb-2">
                           <div id="hasilScan" class="infoPresensi col-sm-12" style="font-size: larger;"><strong>Tunjukkan QR Code ID Card anda pada Kamera!</strong></div>
                        </div>
                     </div>
                  </div>

                  <div class="card-footer">
                     <!--<div class="col-8">-->
                     <!--   <a href="<?= base_url("scan/$oppBtn"); ?>" class="btn btn-<?= $oppBtn == 'masuk' ? 'info' : 'danger'; ?>" style="height: 100%; width: 100%; font-size: 1rem;">-->
                     <!--      <strong><i class="material-icons mr-0" style="font-size: 2.5rem;">swap_horiz</i>-->
                     <!--      </strong>-->
                     <!--   </a>-->
                     <!--</div>-->

                     <!--<div class="col-4">-->
                     <!--   <select id="pilihKamera" class="custom-select w-100" style="height: 100%; width: 100%;">-->
                     <!--   </select>-->
                     <!--   <a href="<?= base_url('/admin'); ?>" class="btn btn-warning" style="height: 100%; width: 100%;">-->
                     <!--      <strong><i class="material-icons">grid_view</i></strong>-->
                     <!--   </a>-->
                     <!--</div>-->
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


<script type="text/javascript" src="<?= base_url('assets/js/plugins/zxing/zxing.min.js') ?>"></script>
<script src="<?= base_url('assets/js/core/jquery-3.5.1.min.js') ?>"></script>
<script type="text/javascript">
   let selectedDeviceId = null;
   let audio = new Audio("<?= base_url('assets/audio/beep.mp3'); ?>");
   const codeReader = new ZXing.BrowserMultiFormatReader();
   const sourceSelect = $('#pilihKamera');

   $(document).on('change', '#pilihKamera', function() {
      selectedDeviceId = $(this).val();
      if (codeReader) {
         codeReader.reset();
         initScanner();
      }
   })

   const previewParent = document.getElementById('previewParent');
   const preview = document.getElementById('previewKamera');

   function initScanner() {
      codeReader.listVideoInputDevices()
         .then(videoInputDevices => {
            videoInputDevices.forEach(device =>
               console.log(`${device.label}, ${device.deviceId}`)
            );

            if (videoInputDevices.length < 1) {
               alert("Kamera tidak ditemukan!");
               return;
            }

            if (selectedDeviceId == null) {
               if (videoInputDevices.length <= 1) {
                  selectedDeviceId = videoInputDevices[0].deviceId
               } else {
                  selectedDeviceId = videoInputDevices[1].deviceId
               }
            }

            if (videoInputDevices.length >= 1) {
               sourceSelect.html('');
               videoInputDevices.forEach((element) => {
                  const sourceOption = document.createElement('option')
                  sourceOption.text = element.label
                  sourceOption.value = element.deviceId
                  if (element.deviceId == selectedDeviceId) {
                     sourceOption.selected = 'selected';
                  }
                  sourceSelect.append(sourceOption)
               })
            }

            $('#previewParent').removeClass('unpreview');
            $('#previewKamera').removeClass('d-none');
            $('#searching').addClass('d-none');

            codeReader.decodeOnceFromVideoDevice(selectedDeviceId, 'previewKamera')
               .then(result => {
                  console.log(result.text);
                  cekData(result.text);

                  $('#previewKamera').addClass('d-none');
                  $('#previewParent').addClass('unpreview');
                  $('#searching').removeClass('d-none');

                  if (codeReader) {
                     codeReader.reset();

                     // delay 2,5 detik setelah berhasil meng-scan
                     setTimeout(() => {
                        initScanner();
                     }, 2500);
                  }
               })
               .catch(err => console.error(err));

         })
         .catch(err => console.error(err));
   }

   if (navigator.mediaDevices) {
      initScanner();
   } else {
      alert('Tidak dapat mengakses kamera.');
   }

   async function cekData(code) {
      jQuery.ajax({
         url: "<?= base_url('scan/cek'); ?>",
         type: 'post',
         data: {
            'unique_code': code,
            'waktu': '<?= strtolower($waktu); ?>'
         },
         success: function(response, status, xhr) {
            audio.play();
            console.log(response);
            $('#hasilScan').html(response);

            //  $('html, body').animate({
            //     scrollTop: $("#hasilScan").offset().top
            //  }, 500);
         },
         error: function(xhr, status, thrown) {
            console.log(thrown);
            $('#hasilScan').html(thrown);
         }
      });
   }

   function clearData() {
      $('#hasilScan').html('');
   }

   // Auto Redirect Berdasarkan Waktu
   (function() {
      const currentTime = new Date();
      const currentHour = currentTime.getHours();
      const urlPath = window.location.pathname;

      // Function to check if redirect has already happened
      const hasRedirected = (page) => {
         return sessionStorage.getItem(`hasRedirected-${page}`);
      };

      // Function to set redirect flag
      const setRedirectFlag = (page) => {
         sessionStorage.setItem(`hasRedirected-${page}`, true);
      };

      // Redirect rules based on time
      const redirectToPage = (targetPage, flag) => {
         if (urlPath !== targetPage && !hasRedirected(flag)) {
            setRedirectFlag(flag);
            window.location.href = targetPage;
         }
      };

      // Jam Masuk 05:00 - 14:00 
      // Jam Pulang 14:00 - 05:00 

      let jamMasuk = 5
      let jamPulang = 10

      if (currentHour >= jamMasuk && currentHour < jamPulang) {
         redirectToPage('/scan/masuk', 'masuk');
      } else if (currentHour >= jamPulang && currentHour < 24) {
         redirectToPage('/scan/pulang', 'pulang');
      }

      // Block access to specific pages based on time
      const redirectBlockedPage = (blockedPath) => {
         if (urlPath === blockedPath) {
            window.location.href = (currentHour >= jamMasuk && currentHour < jamPulang) ? '/scan/masuk' : '/scan/pulang';
         }
      };

      if (currentHour >= jamMasuk && currentHour < jamPulang) {
         redirectBlockedPage('/scan/pulang');
      } else if (currentHour >= jamPulang && currentHour < 24) {
         redirectBlockedPage('/scan/masuk');
      }
   })();

   // Refresh halaman setiap 30 detik (30000 milidetik)
  setTimeout(function() {
      location.reload();
  }, 30000); //30 detik
</script>

<?= $this->endSection(); ?>