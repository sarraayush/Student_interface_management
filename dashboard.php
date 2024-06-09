<?php session_start();
include_once('../includes/config.php');

setcookie("arraySize", "", time() - 3600);
setcookie("index", "", time() - 3600);
setcookie("lg", "", time() - 3600);
setcookie("pgerfresh", "", time() - 3600);
setcookie("subjectArrayCookie", "", time() - 3600);
setcookie("subjectCodeArrayCookie", "", time() - 3600);

if (strlen($_SESSION['facultyid'] == 0)) {
    header('location:logout.php');
} else {

?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <link rel="shortcut icon" href="./assets/img/jsslogoicon.png" type="image/x-icon">

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Faculty Dashboard | JSSATEN-FMS </title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="../css/style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        <?php include_once('includes/navbar.php'); ?>
        <div id="layoutSidenav">
            <?php include_once('includes/sidebar.php'); ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <?php
                        $facultyid = $_SESSION['facultyid'];
                        $query = mysqli_query($con, "select * from faculty where id='$facultyid'");
                        while ($result = mysqli_fetch_array($query)) { ?>
                            <div class="row">

                                <div class="col-xl-3 col-md-6">
                                    <div class="card bg-primary text-white mb-4">
                                        <div class="card-body">Welcome Back
                                            <span style="font-size:22px;">
                                                <?php echo $result['fname'] . " " . $result['lname']; ?>
                                            </span>
                                        </div>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="profile.php">View Profile</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php
                            $query = mysqli_query($con, "select id from users");
                            $totalusers = mysqli_num_rows($query);
                            ?>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Total Student Registered
                                        <span style="font-size:22px;">
                                            <?php echo $totalusers; ?>
                                        </span>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="manage-users.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Add a new Subject
                                        <span style="font-size:22px;">
                                        </span>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="nn.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>


                            <?php
                            $query1 = mysqli_query($con, "select id from users where date(posting_date)=CURRENT_DATE()-1");
                            $yesterdayregusers = mysqli_num_rows($query1);
                            ?>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Feedback Average
                                        <span style="font-size:22px;">
                                            <!-- <?php echo $yesterdayregusers; ?> -->
                                        </span>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="feedback-average.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <!-- <?php
                                    $query2 = mysqli_query($con, "select id from users where date(posting_date)>=now() - INTERVAL 7 day");
                                    $last7daysregusers = mysqli_num_rows($query2);
                                    ?> -->

                            <!-- <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body"> Registered Users in Last 7 Days
                                        <span style="font-size:22px;"> <?php echo $last7daysregusers; ?></span></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="lastsevendays-reg-users.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

<?php
    $query3 = mysqli_query($con, "select id from users where date(posting_date)>=now() - INTERVAL 30 day");
    $last30daysregusers = mysqli_num_rows($query3);
?>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Registered Users in Last 30 Days
                                        <span style="font-size:22px;"> <?php echo $last30daysregusers; ?></span></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="lastthirtyays-reg-users.php">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div> -->
                            <!-- </div> -->


                            </div>
                </main>
                <?php include_once('../includes/footer.php'); ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="./js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="./js/datatables-simple-demo.js"></script>
    </body>

    </html>
<?php } ?>