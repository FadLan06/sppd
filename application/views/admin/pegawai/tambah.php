<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0"> <?= $title ?></h1>
        </div>
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">

      <div class="row">
        <div class="col-lg-12">
          <div class="card card-warning card-outline">
            <div class="card-body">
              <button onclick="location.href='<?= base_url('Pegawai') ?>'" class="btn btn-warning btn-sm"><i class="fas fa-backward"></i> Kembali</button>
              <hr class="bg-warning">
              <form action="" method="POST">
                <div class="row">
                  <div class="col-md-9 mx-auto">
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label for="nip">NIP</label>
                        <input id="nip" type="text" class="form-control" name="nip">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="nama">Nama Lengkap</label>
                        <input id="nama" type="text" class="form-control" name="nama">
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-4">
                        <label for="tempat">Tempat Lahir</label>
                        <input id="tempat" type="text" class="form-control" name="tempat">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="tgl_lhr">Tanggal Lahir</label>
                        <input id="tgl_lhr" type="date" class="form-control" name="tgl_lhr">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="jk">Jenis Kelamin</label>
                        <select name="jk" id="jk" class="form-control">
                          <option value="L">Laki-Laki</option>
                          <option value="P">Perempuan</option>
                        </select>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-3">
                        <label for="pendidikan">Pendidikan Terakhir</label>
                        <select name="pendidikan" id="pendidikan" class="form-control">
                          <option value="SD">SD</option>
                          <option value="SMP">SMP</option>
                          <option value="SMA">SMA</option>
                          <option value="SMK">SMK</option>
                          <option value="D3">D3</option>
                          <option value="S1">S1</option>
                          <option value="S2">S2</option>
                          <option value="S3">S3</option>
                        </select>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="jurusan">Jurusan</label>
                        <input id="jurusan" type="text" class="form-control" name="jurusan">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="status">Status Perkawinan</label>
                        <select name="status" id="status" class="form-control">
                          <option value="KAWIN">KAWIN</option>
                          <option value="BELUM KAWIN">BELUM KAWIN</option>
                        </select>
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label for="bekerja">Bekerja Sejak Tanggal</label>
                        <input id="bekerja" type="date" class="form-control" name="bekerja">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="pangkat">Pangkat</label>
                        <input id="pangkat" type="text" class="form-control" name="pangkat">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="golongan">Golongan</label>
                        <input id="golongan" type="text" class="form-control" name="golongan">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="jabatan">Jabatan</label>
                      <select name="jabatan" id="jabatan" class="form-control">
                        <option value="KETUA">KETUA</option>
                        <option value="ANGGOTA">ANGGOTA</option>
                        <option value="KOORDINATOR SEKRETARIAT">KOORDINATOR SEKRETARIAT</option>
                        <option value="STAF">STAF</option>
                        <option value="BPP">BPP</option>
                        <option value="Staf Devisi HP3S">Staf Devisi HP3S</option>
                        <option value="Staf Devisi SDM">Staf Devisi SDM</option>
                        <option value="Staf Devisi PHL">Staf Devisi PHL</option>
                      </select>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-4">
                        <label for="hp">No Telpon (HP)</label>
                        <input id="hp" type="text" class="form-control" name="hp">
                      </div>
                      <div class="form-group col-md-8">
                        <label for="email">Email</label>
                        <input id="email" type="email" class="form-control" name="email">
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-4">
                        <label for="username">Username</label>
                        <input id="username" type="text" class="form-control" name="username">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="password" class="d-block">Password</label>
                        <input id="password" type="password" class="form-control pwstrength" data-indicator="pwindicator" name="password">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="password2" class="d-block">Password Confirmation</label>
                        <input id="password2" type="password" class="form-control" name="password-confirm">
                      </div>
                    </div>
                    <div class="form-group">
                      <button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Tambah</button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div><!-- /.card -->
        </div>
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->