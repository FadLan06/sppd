<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0"> <?=$title?></h1>
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
              <button onclick="location.href='<?= base_url('Pegawai/Tambah')?>'" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> Tambah</button>
              <hr class="bg-warning">
              <table id="example" class="table table-sm table-bordered table-responsive">
                <thead>
                  <tr align="center">
                    <th width="5%">#</th>
                    <th width="15%">NIP</th>
                    <th>Nama Lengkap</th>
                    <th width="20%">Email</th>
                    <th width="13%">Jabatan</th>
                    <th width="10%">Password</th>
                    <th width="10%">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td align="center">1</td>
                    <td>19860922 201001 1 001</td>
                    <td>Berny Pakaja, SH</td>
                    <td>bernypakaja@gmail.com</td>
                    <td align="center">KOORDINATOR SEKRETARIAT</td>
                    <td align="center"><a href="" class="badge badge-warning"><i class="fas fa-sync-alt"></i> Reset</a></td>
                    <td align="center">
                      <a href="" class="badge badge-info"><i class="fas fa-edit"></i> Ubah</a>
                      <a href="" class="badge badge-danger"><i class="fas fa-trash"></i> Hapus</a>
                    </td>
                  </tr>
                </tbody>
              </table>
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