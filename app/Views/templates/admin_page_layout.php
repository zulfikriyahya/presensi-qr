<!DOCTYPE html>
<html lang="en">
<?= $this->include('templates/head') ?>
<body>
   <div>
      <?= $this->include('templates/sidebar') ?>
      <div class="main-panel">
         <?= $this->include('templates/navbar') ?>
         <?= $this->renderSection('content') ?>
         <?= $this->include('templates/footer') ?>
      </div>
   </div>
</body>
</html>