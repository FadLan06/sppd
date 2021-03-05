<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?=$title?> | SPD BawasluKota</title>

  <link rel="shortcut icon" href="<?=base_url('assets/img/logo.png')?>">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?=base_url('assets/')?>plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?=base_url('assets/')?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?=base_url('assets/')?>dist/css/adminlte.min.css">
  <style>
    a:hover{
      color:#ffc107;
      text-decoration:none
    }

    .form-control:focus {
      border-color: #ffc107;
      -webkit-box-shadow: none;
      box-shadow: none;
    }
  </style>
</head>
<body class="hold-transition login-page bg-dark">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-warning">
    <div class="card-header text-center" style="border-bottom: 1px solid #ffc107">
      <img src="<?=base_url('assets/img/logo.png')?>" class="img-fluid" width="30%" alt="">
    </div>
    <div class="card-body">
      <p class="login-box-msg text-dark">
        <a href="<?=base_url('')?>" class="h2"><b>SPD</b> BawasluKota</a><br>
        <small>Sistem Perjalan Dinas Bawaslu Kota Gorontalo</small>
      </p>

      <form action="<?=base_url('Dashboard')?>" method="post">
        <div class="input-group mb-3">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
          <input type="text" class="form-control" placeholder="Username">
        </div>
        <div class="input-group mb-3">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
          <input type="password" class="form-control" placeholder="Password">
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-warning btn-block">Masuk</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?=base_url('assets/')?>plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?=base_url('assets/')?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?=base_url('assets/')?>dist/js/adminlte.min.js"></script>
</body>
</html>
