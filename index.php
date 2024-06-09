<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" href="./assets/img/jsslogoicon.png" type="image/x-icon">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Home | JSSATEN-FMS</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
    </script>
</head>

<body>
    <!-- <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark"> -->
    <!-- Navbar Brand-->
    <!-- <a class="navbar-brand ps-3" href="index.php">Registration and Login System</a> -->
    <!-- Sidebar Toggle-->

    <!-- Navbar Search-->

    <!-- </nav> -->

    <?php include_once('includes/header.php'); ?>

    <div id="layoutSidenav">

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Feedback Management System</h1>
                    <!-- <ol class="breadcrumb mb-4"> -->
                    <!-- <li class="breadcrumb-item"><a href="index.php">Home</a></li> -->

                    <!-- </ol> -->

                    <div class="cardContainer">
                        <h2>Select Your Profile</h2>
                        <a href="login.php">
                            <div class="studentContainer">
                                Student
                            </div>
                        </a>
                        <a href="faculty/index.php">
                            <div class="facultyContainer">
                                Faculty
                            </div>
                        </a>
                        <a href="admin/index.php">
                            <div class="adminContainer">
                                Admin
                            </div>
                        </a>
                    </div>

                    <!-- <div class="row">
                        <div class="col-xl-4 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">Faculty Login</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="faculty">login Here</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">Student Login</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="login.php">Login Here</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">Admin Panel</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="admin">Login Here</a>

                                </div>
                            </div>
                        </div>

                    </div> -->
                    <!-- <div style="height: 100vh"></div> -->

                </div>
            </main>
            <?php include_once('includes/footer.php'); ?>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="./js/scripts.js"></script>
</body>

</html>



<!-- Prakhar's changes -->
<!-- <!DOCTYPE html>
<html lang="en">

<head>   
 <link rel="shortcut icon" href="./assets/img/jsslogoicon.png" type="image/x-icon">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> JSSATEN-FMS</title>
    <link rel="icon" href="assets/img/jsslogoicon.png">
    <link rel="stylesheet" href="css/style_p.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300;500;700&family=Montserrat:wght@300;400;500;600;700&family=Oswald:wght@400;500&family=Plus+Jakarta+Sans:ital,wght@0,500;0,600;1,300;1,400&family=Poppins&family=Roboto+Condensed&display=swap" rel="stylesheet">
</head>

<body>
    <div class="head">
        <div class="head1">
            <img src="assets/img/jsslogoicon.png" alt="jsslogo">
        </div>
        <div class="head2">
            <div class="t1">JSS MAHAVIDYAPEETHA</div>
            <div class="t2"><b>JSS Academy of Technical Education, Noida</b></div>

            <marquee width="100%" height="105px" style="font-size: 30px;" behavior="scroll" bgcolor="white">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Approved by All India Council for Technical Education (AICTE), New Delhi.<br>
                UG programs are Accredited by National Board of Accreditation (NBA), New Delhi.<br>
                &nbsp;&nbsp;&nbsp;&nbsp;Affiliated to Dr APJ Abdul Kalam Technical University, Uttar Pradesh, Lucknow
            </marquee>
        </div>
        <div class="head3">
            <img src="assets/img/abc.png">
        </div>
    </div>
    <hr>
    <h1 style="text-align: center;">Select Your Profile</h4>
        <div class="profile">
            <button class="student"><i class="fa-solid fa-book-open-reader"></i>Student</button>
            <button class="faculty"><i class="fa-solid fa-chalkboard-user"></i>Faculty</button>
            <button class="admin"><i class="fa-solid fa-user-tie"></i>Admin&nbsp;</button>
        </div><br><br><br><br><br><br><br><br><br><br>
        <div class="footer">
            <div class="text1">Copyright <i class="fa-regular fa-copyright"></i> 2024 All Rights Reserved</div>
            <div class="text2">Designed & Developed by Yash & Ayush</div>
        </div>
</body>

</html> -->