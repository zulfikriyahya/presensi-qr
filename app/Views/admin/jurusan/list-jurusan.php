<div class="card-body table-responsive">
  <table class="table">
    <thead class="text-light">
      <th><b>No</b></th>
      <th><b>Jurusan</b></th>
      <th><b>Aksi</b></th>
    </thead>
    <tbody>
      <?php $i = 1;
      foreach ($data as $value) : ?>
        <tr>
          <td><?= $i; ?></td>
          <td><?= $value['jurusan']; ?></td>
          <td>
            <a href="<?= base_url('admin/jurusan/edit/' . $value['id']); ?>" type="button" class="btn btn-warning p-2" id="<?= $value['id']; ?>">
              <i class="material-icons">edit</i>
              Ubah
            </a>
            <button onclick='deleteItem("admin/jurusan/deleteJurusanPost","<?= $value["id"]; ?>","Konfirmasi untuk menghapus data");' class="btn btn-danger p-2" id="<?= $value['id']; ?>">
              <i class="material-icons">delete_forever</i>
              Hapus
            </button>
          </td>
        </tr>
      <?php $i++;
      endforeach; ?>
    </tbody>
  </table>
</div>