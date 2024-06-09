<?php session_start();
include_once('../includes/config.php');
if (strlen($_SESSION['adminid'] == 0)) {
    header('location:logout.php');
} else {
    //Code for Updation 
    if (isset($_POST['update'])) {
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $mobile = $_POST['mobile'];
        $dept = $_POST['dept'];
        $designation = $_POST['designation'];
        $subjectalloted = $_POST['subjectalloted'];
        $facultyid = $_GET['uid'];
        $msg = mysqli_query($con, "update faculty set fname='$fname',lname='$lname',designation='$designation',subjectalloted='$subjectalloted', mobile='$mobile', dept='$dept' where id='$facultyid'");

        if ($msg) {
            echo "<script>alert('Profile updated successfully');</script>";
            echo "<script type='text/javascript'> document.location = 'manage-faculty.php'; </script>";
        }
    }



?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <link rel="shortcut icon" href="../assets/img/jsslogoicon.png" type="image/x-icon">

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Edit Profile | JSSATEN-FMS</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="../css/style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
        </script>
    </head>

    <body class="sb-nav-fixed">
        <?php include_once('includes/navbar.php'); ?>
        <div id="layoutSidenav">
            <?php include_once('includes/sidebar.php'); ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">

                        <?php
                        $facultyid = $_GET['uid'];
                        $query = mysqli_query($con, "select * from faculty where id='$facultyid'");
                        while ($result = mysqli_fetch_array($query)) { ?>
                            <h1 class="mt-4"><?php echo $result['fname']; ?>'s Profile</h1>
                            <hr>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="manage-faculty.php">Manage Faculty</a></li>
                                <li class="breadcrumb-item"><a href="faculty-profile.php">Faculty's Profile</a></li>
                                <li class="breadcrumb-item active">Edit Faculty's Profile</li>
                            </ol>
                            <div class="card mb-4">
                                <form method="post">
                                    <div class="card-body">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>First Name</th>
                                                <td><input class="form-control" id="fname" name="fname" type="text" value="<?php echo $result['fname']; ?>" required /></td>
                                            </tr>
                                            <tr>
                                                <th>Last Name</th>
                                                <td><input class="form-control" id="lname" name="lname" type="text" value="<?php echo $result['lname']; ?>" required /></td>
                                            </tr>
                                            <tr>
                                                <th>Email</th>
                                                <td colspan="3"><?php echo $result['email']; ?></td>
                                            </tr>
                                            <tr>
                                                <th>Designation</th>
                                                <td><input class="form-control" id="designation" name="designation" type="text" value="<?php echo $result['designation']; ?>" /></td>
                                            </tr>
                                            <tr>
                                                <th>Mobile No.</th>
                                                <td><input class="form-control" id="mobile" name="mobile" type="text" value="<?php echo $result['mobile']; ?>" /></td>
                                            </tr>
                                            <tr>
                                                <th>Department</th>
                                                <td><input class="form-control" id="dept" name="dept" type="text" value="<?php echo $result['dept']; ?>" /></td>
                                            </tr>
                                            <!-- <tr>
                                                <th>Subject Allotted</th>
                                                <td><input class="form-control" id="subjectalloted" name="subjectalloted" type="text" value="<?php echo $result['subjectalloted']; ?>" required /></td>
                                            </tr> -->

                                            <tr>
                                                <td colspan="4" style="text-align:center ;"><button type="submit" class="btn btn-primary btn-block" name="update">Update</button></td>

                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>
                        <?php } ?>

                    </div>
                </main>
                <?php include('../includes/footer.php'); ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
        </script>
        <script src="../js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
    </body>

    </html>
<?php } ?>