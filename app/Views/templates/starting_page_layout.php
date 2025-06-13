<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <?= $this->include('templates/css'); ?>
   <title>PRESENSI ONLINE MTS NEGERI 1 PANDEGLANG</title>
   <style>
      .bg {
         background: url(<?= base_url('assets/img/wallpaper.jpg'); ?>) center;
         opacity: 0.3;
         background-size: cover;
         /* height: 100vh; */
         width: 100%;
         /* position: absolute; */
         left: 0;
         top: 0;
         bottom: 0;
      }
      .main-panel {
         background-color: #010101;
         position: relative; 
         float: left; 
         height: 100vh;
         width: calc(100%);
         transition: 0.33s, cubic-bezier(0.685, 0.0473, 0.346, 1);
      }
      video#previewKamera {
         width: 100%;
         height: 100%;
         border-radius: .5rem;
         border: solid .4rem orange;
      }
      .infoPresensi {
         width: 100%;
         height: 100%;
         border-radius: .5rem;
         border: solid .2rem cyan;
      }
      .informasi {
         width: 100%;
         height: 100%;
         margin: 2;
         border-radius: .2rem;
         border: double .2rem cyan;
      }
      .unpreview {
         background-color: aquamarine;
         text-align: center;
      }
      .form-select {
         min-width: 200px;
      }
   </style>
</head>
<body>
   <div class="bg bg-image"></div>
   <!-- Navbar -->
   <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top">
      <div class="container-fluid">
         <div class="navbar-wrapper row w-100">
            <div class="col-6">
               <b class="navbar-brand"><b><?= $title ?? ''; ?></b></b>
            </div>
            <div class="col-6 d-flex justify-content-end">
               <?= $this->renderSection('navaction') ?>
            </div>
         </div>
      </div>
   </nav>
   <!-- End Navbar -->
   <?= $this->renderSection('content') ?>
   <?= $this->include('templates/js'); ?>
</body>
</html>