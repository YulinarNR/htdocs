<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>WSIBW</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

  <?php include "./sidebar.php" ?>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

       <!-- Begin Page Content -->
       <div class="container-fluid">

         <!-- Content Row -->
         <div class="row">
           
           <!-- Area Chart -->
           <div class="col-xl-12 col-lg-7">
             <div class="card shadow mb-4 mt-3">
              <!-- Card Header Dropdown -->
               <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                 <h6 class="m-0 font-weight-bold text-primary">Registration</h6>
                 <div class="dropdown no-arrow">
                   <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                   </a>
                 </div>
               </div>

               <!-- Card Body -->
               <div class="card-body">
                 <form method="post">
                   <div class="form-group">
                     <input type="text" class="form-control form-control-user" id="name" name="name" placeholder="Nama Anda" required>
                   </div>

                   <div class="form-group">
                     <input type="text" class="form-control form-control-user" id="username" name="username" placeholder="Username Anda" required>
                   </div>

                    <div class="form-group">
                     <input type="email" class="form-control form-control-user" id="email" name="email" placeholder="Email Anda" required>
                   </div>

                   <div class="form-group">
                     <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password Anda" required>
                   </div>

                    <div class="form-group">
                    <div class="radio"> 
                        <label> <input type="radio" name="jenis_kelamin" value="L"> Laki-Laki</label>
                        <label> <input type="radio" name="jenis_kelamin" value="P"> Perempuan</label>
                    </div>  
                   </div>

                   <div class="form-group">
                      <select class="form-control" name="agama">
                        <option value="Islam">Islam</option>
                        <option value="Katolik">Katolik</option>
                        <option value="Protestan">Protestan</option>
                        <option value="Hindu">Hindu</option>
                        <option value="Budha">Budha</option>
                        <option value="Khonghucu">Khonghucu</option>
                      </select>
                    </div>
                   

                   <div class="form-group">
                   <textarea class="form-control" name="biografi"></textarea>
                   </div>

                   <button type="submit" class="btn btn-success" name="submit">Tambah</button>
                   <hr>
                   <?php
                   $name = @$_POST['name'];
                   $username = @$_POST['username'];
                   $email = @$_POST['email'];
                   $jk = @$_POST['jk'];
                   $agama = @$_POST['agama'];
                   $biografi = @$_POST['biografi'];
                   if ($name) {
                     echo "<br><strong>Nama : </strong> {$name} <br>";
                   }
                   if ($username) {
                     echo "<br><strong>Username : </strong> {$username} <br>";
                   }
                   if ($email) {
                     echo "<br><strong>Email : </strong> {$email} <br>";
                   }
                    if ($jk) {
                     echo "<br><strong>Jenis Kelamin : </strong> {$jk} <br>";
                   }
                    if ($agama) {
                     echo "<br><strong>Agama : </strong> {$agama} <br>";
                   }
                    if ($biografi) {
                     echo "<br><strong>Biografi : </strong> {$biografi} <br>";
                   }
                   ?>
                 </form>
               </div>

             </div>
           </div>
         </div>

       </div>


      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Yulinar Nur Rahmawati</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
