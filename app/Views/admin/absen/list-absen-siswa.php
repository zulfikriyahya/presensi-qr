<div class="card-body">
    <div class="row">
        <div class="col-lg-10 col-md-10">
            <div class="pt-1 pl-1">
                <h4><b>Presensi Siswa</b></h4>
            </div>
        </div>
        <div class="col-lg-2 col-md-2">
            <div class="pr-1">
                <h3 class="btn btn-block btn-warning">
                    <b><?= $kelas; ?></b>
                </h3>
            </div>
        </div>
    </div>

    <div id="dataSiswa" class="card-body">
        <?php if (!empty($data)) : ?>
            <table class="table">
                <thead class="text-light">
                    <th><b>No.</b></th>
                    <th><b>NISN</b></th>
                    <th><b>Nama Siswa</b></th>
                    <th><b>Status</b></th>
                    <th><b>Jam Masuk</b></th>
                    <th><b>Jam Pulang</b></th>
                    <th><b>Keterangan</b></th>
                    <th><b>Aksi</b></th>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    <?php foreach ($data as $value) : ?>
                        <?php
                        $idKehadiran = intval($value['id_kehadiran'] ?? ($lewat ? 5 : 4));
                        $kehadiran = kehadiran($idKehadiran);
                        ?>
                        <tr>
                            <td><?= $no; ?></td>
                            <td><?= $value['nis']; ?></td>
                            <td><b><?= $value['nama_siswa']; ?></b></td>
                            <td>
                                <p class="p-2 w-100 btn btn-<?= $kehadiran['color']; ?> text-center">
                                    <b><?= $kehadiran['text']; ?></b>
                                </p>
                            </td>
                            <td><b><?= $value['jam_masuk'] ?? '-'; ?></b></td>
                            <td><b><?= $value['jam_keluar'] ?? '-'; ?></b></td>
                            <td><?= $value['keterangan'] ?? '-'; ?></td>
                            <td>
                                <?php if (!$lewat) : ?>
                                    <button data-toggle="modal" data-target="#ubahModal" onclick="getDataKehadiran(<?= $value['id_presensi'] ?? '-1'; ?>, <?= $value['id_siswa']; ?>)" class="btn btn-warning p-2" id="<?= $value['nis']; ?>">
                                        <i class="material-icons">edit</i>
                                    </button>
                                <?php else : ?>
                                    <button class="btn btn-disabled p-2">No Action</button>
                                <?php endif; ?>
                            </td>
                        </tr>
                    <?php $no++;
                    endforeach ?>
                </tbody>
            </table>
        <?php
        else :
        ?>
            <div class="row">
                <div class="col">
                    <h4 class="text-center text-danger">Data tidak ditemukan</h4>
                </div>
            </div>
        <?php
        endif; ?>
    </div>
</div>

<?php
function kehadiran($kehadiran): array
{
    $text = '';
    $color = '';
    switch ($kehadiran) {
        case 1:
            $color = 'success';
            $text = 'Hadir';
            break;
         case 2:
            $color = 'primary';
            $text = 'Sakit';
            break;
         case 3:
            $color = 'info';
            $text = 'Izin';
            break;
         case 4:
            $color = 'danger';
            $text = 'Alfa';
            break;
         case 5:
         default:
            $color = 'disabled';
            $text = 'Belum tersedia';
            break;
    }

    return ['color' => $color, 'text' => $text];
}
?>