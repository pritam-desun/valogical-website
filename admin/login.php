<?php
$hostname     = "localhost";
$username     = "root";
$password     = "";
$databasename = "valogical_db";
session_start();
// Create connection 
$conn = new mysqli($hostname, $username, $password, $databasename);
// Check connection 
if ($conn->connect_error) {
    die("Unable to Connect database: " . $conn->connect_error);
}
if (isset($_POST['submit'])) {

    $email = isset($_POST['email']) ? $_POST['email'] : "";
    if (!empty($_POST['password'])) {
        $password = md5($_POST['password']);
        //print_r($password);
    }
    $errMsg = '';
    $query = "SELECT * FROM `users` WHERE `email` = '$email' and `password` = '$password' ";
    $result = mysqli_query($conn, $query);
    $data = mysqli_fetch_assoc($result);
    $row = mysqli_num_rows($result);
    if ($row > 0) {
        $_SESSION['user_image'] = $data['image'];
        $_SESSION['user_email'] = $data['email'];
        $_SESSION['user_name'] = $data['name'];
        $_SESSION['id'] = $data['user_id'];
        $_SESSION['logged_in'] = 1;
        header("Location: dashboard.php");
    } else {
        $errMsg = "Invalid username and password";
    }
} else {
    $errMsg = '';
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image">

                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome to Login</h1>
                                        <?php if (!empty($errMsg)) { ?>
                                            <div class="alert alert-danger"><?= $errMsg; ?></div> <?php } ?>
                                        <?php if (isset($_GET['log'])) { ?>
                                            <div class="alert alert-danger"><?= $_GET['log'];; ?></div> <?php } ?>
                                    </div>
                                    <form class="user" action="" method="post">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user" id="exampleInputEmail" name="email" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="exampleInputPassword" name="password" placeholder="Password">
                                        </div>
                                        <input type="submit" class="btn btn-primary btn-user btn-block" name="submit" value="login">
                                        <hr>
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.php">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

</body>

</html>