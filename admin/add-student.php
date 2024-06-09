<?php session_start();
include_once('../includes/config.php');
if (strlen($_SESSION['adminid'] == 0)) {
    header('location:logout.php');
} else {
    //Code for Addition
    if (isset($_POST['add'])) {
        $year = $_POST['year'];
        $semester = $_POST['semester'];
        $section = $_POST['section'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $email = $_POST['email'];
        $urollno = $_POST['urollno'];
        $addno = $_POST['addno'];
        $password = $_POST['password'];
        $contact = $_POST['contact'];
        $department = $_POST['department'];
        $activationcode = 1;
        $status = 1;

        echo "<script>";
        echo "console.log('Year: " . $year . "');";
        echo "console.log('Semester: " . $semester . "');";
        echo "console.log('Section: " . $section . "');";
        echo "console.log('First Name: " . $fname . "');";
        echo "console.log('Last Name: " . $lname . "');";
        echo "console.log('Email: " . $email . "');";
        echo "console.log('University Roll No.: " . $urollno . "');";
        echo "console.log('Admission No.: " . $addno . "');";
        echo "console.log('Password: " . $password . "');";
        echo "console.log('Contact No.: " . $contact . "');";
        echo "console.log('Department: " . $department . "');";
        echo "</script>";


        $sql = mysqli_query($con, "select id from users where email='$email'");
        $row = mysqli_num_rows($sql);

        $sql1 = mysqli_query($con, "select id from users where urollno='$urollno'");
        $row1 = mysqli_num_rows($sql1);

        $sql2 = mysqli_query($con, "select id from users where addno='$addno'");
        $row2 = mysqli_num_rows($sql2);
        if ($row > 0) {
            echo "<script>alert('Email id already exist with another account. Please try with other email id');</script>";
        } else if ($row1 > 0) {
            echo "<script>alert('urollno already exist with another account. Please try with other urollno');</script>";
        } else if ($row2 > 0) {
            echo "<script>alert('addno already exist with another account. Please try with other addno');</script>";
        } else {
            $msg = mysqli_query($con, "insert into users(year,semester,section,fname,lname,email,urollno,addno,password,contactno,department,activationcode,status) values('$year','$semester','$section','$fname','$lname','$email','$urollno','$addno.','$password','$contact','$department', '$activationcode', '$status')");
            // echo "<script>console.log('Error: " . mysqli_error($con) . "');</script>";
            if (!$msg) {
                // Log the error message to the console
                echo "<script>console.log('Department: " . $con . "');</script>";
            } else {
                echo "<script>alert('Student created successfully');</script>";
                echo "<script type='text/javascript'> document.location = 'manage-users.php'; </script>";
            }
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
        <title>Add Student | JSSATEN-FMS</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <link href="../css/style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
        </script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    </head>

    <body class="sb-nav-fixed">
        <?php include_once('includes/navbar.php'); ?>
        <div id="layoutSidenav">
            <?php include_once('includes/sidebar.php'); ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">




                        <h1 class="mt-4">Add New Student</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Add Student</li>
                        </ol>
                        <div class="card mb-4">
                            <form method="post">
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>First Name</th>
                                            <td><input class="form-control" id="fname" name="fname" type="text" required /></td>
                                        </tr>
                                        <tr>
                                            <th>Last Name</th>
                                            <td><input class="form-control" id="lname" name="lname" type="text" required /></td>
                                        </tr>
                                        <tr>
                                            <th>Department</th>
                                            <td>
                                                <select name="department" class="form-control" id="department" required>
                                                    <option value="" selected disabled>Select Department</option>
                                                    <option>Information Technology</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Year</th>
                                            <td>
                                                <select name="year" class="form-control" id="year">
                                                    <option selected disabled>Year</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Semester</th>
                                            <td>
                                                <select name="semester" class="form-control" id="semester">
                                                    <option selected disabled>Semester</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Section</th>
                                            <td>
                                                <select name="section" class="form-control" id="section">
                                                    <option selected disabled>Section</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <script>
                                            $(document).ready(function() {
                                                $('#year').change(function() {
                                                    var selectedYear = $(this).val();
                                                    $('#semester').empty();
                                                    $('#section').empty();
                                                    if (selectedYear === '2') {
                                                        $('#semester').append('<option value="3">3</option>');
                                                        $('#semester').append('<option value="4">4</option>');
                                                        $('#section').append('<option value="IT 1">IT 1</option>');
                                                        $('#section').append('<option value="IT 2">IT 2</option>');
                                                        $('#section').append('<option value="IT 3">IT 3</option>');
                                                        $('#section').append('<option value="CSDS 1">CSDS 1</option>');
                                                        $('#section').append('<option value="CSDS 2">CSDS 2</option>');
                                                    } else if (selectedYear === '3') {
                                                        $('#semester').append('<option value="5">5</option>');
                                                        $('#semester').append('<option value="6">6</option>');
                                                        $('#section').append('<option value="IT 1">IT 1</option>');
                                                        $('#section').append('<option value="IT 2">IT 2</option>');
                                                        $('#section').append('<option value="CSDS">CSDS</option>');
                                                    } else if (selectedYear === '4') {
                                                        $('#semester').append('<option value="7">7</option>');
                                                        $('#semester').append('<option value="8">8</option>');
                                                        $('#section').append('<option value="IT 1">IT 1</option>');
                                                        $('#section').append('<option value="IT 2">IT 2</option>');
                                                    }
                                                });
                                            });
                                        </script>
                                        <tr>
                                            <th>Email</th>
                                            <td><input class="form-control" id="email" name="email" type="email" required /></td>
                                        </tr>
                                        <tr>
                                            <th>University Roll No.</th>
                                            <td><input class="form-control" id="urollno" name="urollno" type="text" required /></td>
                                        </tr>
                                        <tr>
                                            <th>Admission No.</th>
                                            <td><input class="form-control" id="addno" name="addno" type="text" maxlength="9" required /></td>
                                        </tr>
                                        <tr>
                                            <th>Contact No.</th>
                                            <td><input class="form-control" id="contact" name="contact" type="text" maxlength="10" required /></td>
                                        </tr>
                                        <tr>
                                            <th>Password</th>
                                            <td><input class="form-control" id="password" name="password" type="text" required /></td>
                                        </tr>

                                        <tr>
                                            <td colspan="4" style="text-align:center ;"><button type="submit" class="btn btn-primary btn-block" name="add">Add</button></td>

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