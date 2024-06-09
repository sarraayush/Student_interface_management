<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<?php
session_start();
require_once('includes/config.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

function getDefaultGateway()
{
    $result = shell_exec('ipconfig');
    if (preg_match('/IPv4 Address.*: ([\d\.]+)/', $result, $matches)) {
        return $matches[1];
    }
    return null;
}

// Usage
$defaultGatewayIP = getDefaultGateway();

//Code for Registration 
if (isset($_POST['submit'])) {
    $year = $_POST['year'];
    $semester = $_POST['semester'];
    $department = $_POST['department'];
    $section = $_POST['section'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $urollno = $_POST['urollno'];
    $addno = $_POST['addno'];
    $password = $_POST['password'];
    $contact = $_POST['contact'];
    $status = 0;
    $activationcode = md5($email . time());

    $sql = mysqli_query($con, "SELECT id FROM users WHERE email='$email'");
    $row = mysqli_num_rows($sql);

    $sql1 = mysqli_query($con, "SELECT id FROM users WHERE urollno='$urollno'");
    $row1 = mysqli_num_rows($sql1);

    $sql2 = mysqli_query($con, "SELECT id FROM users WHERE addno='$addno'");
    $row2 = mysqli_num_rows($sql2);

    if ($row > 0) {
        echo "<script>alert('Email id already exists with another account. Please try with another email id');</script>";
    } else if ($row1 > 0) {
        echo "<script>alert('Urollno already exists with another account. Please try with another urollno');</script>";
    } else if ($row2 > 0) {
        echo "<script>alert('Addno already exists with another account. Please try with another addno');</script>";
    } else {
        $msg = mysqli_query($con, "INSERT INTO users(year, semester, department, section, fname, lname, email, urollno, addno, password, contactno, activationcode, status) VALUES('$year', '$semester', '$department', '$section', '$fname', '$lname', '$email', '$urollno', '$addno', '$password', '$contact', '$activationcode', '$status')");

        if ($msg) {
            $mail = new PHPMailer(true);

            try {
                //Server settings
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'swapnilskumar99@gmail.com'; // replace with your email
                $mail->Password = 'iqae sirh lxnk yekb'; // replace with your email password or app password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                $mail->Port = 587;

                //Recipients
                $mail->setFrom('swapnilskumar99@gmail.com', 'JSS-FMS'); // replace with your email
                $mail->addAddress($email);

                //Content
                $mail->isHTML(true);
                $mail->Subject = 'Verify your Email';
                $bodyContent = "Dear $fname,<br><br>";
                $bodyContent .= "Please click the following link for verifying and activation of your account:<br>";
                $bodyContent .= "<a href='http://$defaultGatewayIP/FeedbackSystem/email_verification.php?code=$activationcode'>Click Here</a>";
                $mail->Body = $bodyContent;

                $mail->send();
                echo "<script>alert('Registration successful. Please verify your email.');</script>";
                echo "<script type='text/javascript'> document.location = 'login.php'; </script>";
            } catch (Exception $e) {
                echo "<script>alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');</script>";
            }
        }
    }
}
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
    <title>Student Signup | JSSATEN-FMS</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
    </script>
    <script type="text/javascript">
        function checkpass() {
            if (document.signup.password.value != document.signup.confirmpassword.value) {
                alert(' Password and Confirm Password field does not match');
                document.signup.confirmpassword.focus();
                return false;
            }
            return true;
        }

        function showpass() {
            var x = document.getElementById("password");
            var y = document.getElementById("confirmpassword");
            if (x.type === "password") {
                x.type = "text";
                y.type = "text";
            } else {
                x.type = "password";
                y.type = "password";
            }
        }
    </script>

</head>

<body>

    <?php include_once('includes/header.php'); ?>

    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h2 align="center">Create Account</h2>
                                    <hr />
                                    <!-- <h3 class="text-center font-weight-light my-4">Create Account</h3></div> -->
                                    <div class="card-body">
                                        <form method="post" name="signup" onsubmit="return checkpass();">

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="fname" name="fname" type="text" placeholder="Enter your first name" required />
                                                        <label for="inputFirstName">First name</label>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="lname" name="lname" type="text" placeholder="Enter your last name" required />
                                                        <label for="inputLastName">Last name</label>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="email" name="email" type="email" placeholder="team@gmail.com" required />
                                                <label for="inputEmail">Email address</label>
                                            </div>


                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="contact" name="contact" type="text" placeholder="1234567890" required pattern="[0-9]{10}" title="10 numeric characters only" maxlength="10" required />
                                                <label for="inputcontact">Contact Number</label>
                                            </div>

                                            <div class="form-floating mb-3">

                                                <select name="department" class="form-control" id="department" required>
                                                    <option value="" selected disabled>Select Department</option>
                                                    <option>Information Technology</option>
                                                </select>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <!-- <label for="year">Year</label> -->
                                                        <select name="year" class="form-control" id="year">
                                                            <option selected disabled>Year</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <!-- <label for="semester">Semester</label> -->
                                                        <select name="semester" class="form-control" id="semester">
                                                            <option selected disabled>Semester</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <!-- <label for="semester">Section</label> -->
                                                <td>
                                                    <select name="section" class="form-control" id="section">
                                                        <option selected disabled>Section</option>
                                                    </select>
                                                </td>
                                            </div>

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

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="urollno" name="urollno" type="text" placeholder="1234567890" maxlength="13" required />
                                                        <label for="inputcontact">University Roll No.</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="addno" name="addno" type="text" placeholder="1234567890" maxlength="9" required />
                                                        <label for="inputcontact">Admission No.</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="password" name="password" type="password" placeholder="Create a password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required />
                                                        <label for="inputPassword">Password</label>
                                                        <input type="checkbox" onclick="showpass()"> Show Password(s)

                                                    </div>
                                                </div>


                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required />
                                                        <label for="inputPasswordConfirm">Confirm Password</label>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button type="submit" class="btn btn-primary btn-block" name="submit">Create
                                                        Account</button></div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.php">Have an account? Go to login</a></div>
                                        <div class="small"><a href="index.php">Back to Home</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </main>
        </div>
        <?php include_once('includes/footer.php'); ?>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="./js/scripts.js"></script>
</body>

</html>