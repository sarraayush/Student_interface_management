<?php session_start();
require_once('../includes/config.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../vendor/autoload.php';


if (isset($_POST['submit'])) {
    $designation = $_POST['designation'];
    $department = $_POST['department'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $contact = $_POST['contact'];
    // $status=0;
    // $activationcode=md5($email.time());

    $sql = mysqli_query($con, "select id from users where email='$email'");
    $row = mysqli_num_rows($sql);
    if ($row > 0) {
        echo "<script>alert('Email id already exist with another account. Please try with other email id');</script>";
    } else {
        $msg = mysqli_query($con, "insert into faculty(fname,lname,email,password,department,designation,mobile) values('$fname','$lname','$email','$password','$department','$designation','$contact')");

        if ($msg) {
            $mail = new PHPMailer;
            $toemail = $email;
            // $fname = $row2['fname'];
            $subject = "Verify you Email";
            // $password=$row2['password'];
            $message = "Please click The following link For verifying and activation of your account <div style='padding-top:10px;'><a href='http://localhost/firstyear/loginsystem/email_verification.php?code=$activationcode'>Click Here</a></div>";
            $mail->isSMTP();                            // Set mailer to use SMTP
            $mail->Host = 'smtp.gmail.com';             // Specify main and backup SMTP servers



            $mail->SMTPAuth = true;                     // Enable SMTP authentication
            $mail->Username = '20it99@jssaten.ac.in';    // SMTP username
            $mail->Password = 'Password890@#'; // SMTP password
            $mail->SMTPSecure = 'tls';                  // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                          // TCP port to connect to
            $mail->setFrom('20it99@jssaten.ac.in', 'JSS-SIM');
            $mail->addAddress($toemail);   // Add a recipient
            $mail->isHTML(true);  // Set email format to HTML
            $bodyContent = $message;
            $mail->Subject = $subject;
            $bodyContent = 'Dear' . " " . $fname;
            $bodyContent .= '<p>' . $message . '</p>';
            $mail->Body = $bodyContent;
            if (!$mail->send()) {
                echo  "<script>alert('Message could not be sent');</script>";
                echo 'Mailer Error: ' . $mail->ErrorInfo;
            } else {
                echo  "<script>alert('Registration successful, Please verify in the registered Email-Id');</script>";
            }
            echo "<script type='text/javascript'> document.location = 'index.php'; </script>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" href="../assets/img/jsslogoicon.png" type="image/x-icon">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty-Signup</title>
    <link rel="icon" href="img/jsslogoicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
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
    <?php include_once('./includes/header.php'); ?>

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
                                <form method="post" name="signup" novalidate class="needs-validation" onsubmit="return checkpass();">

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
                                        <div class="invalid-feedback">Please enter a valid email</div>
                                        <label for="inputEmail">Email address</label>
                                    </div>


                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="contact" name="contact" type="text" placeholder="1234567890" required pattern="[0-9]{10}" title="10 numeric characters only" maxlength="10" required />
                                        <label for="inputcontact">Contact Number</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="designation" name="designation" type="text" placeholder="" required />
                                        <label for="designation">Designation</label>
                                    </div>

                                    <div class="form-floating mb-3">

                                        <select name="department" class="form-control" id="department">
                                            <option selected>Department</option>
                                            <option>Computer Science And Engineering</option>
                                            <option>Computer Science (AL & ML)</option>
                                            <option>Computer Science (DS)</option>
                                            <option>Information Technology</option>
                                            <option>Electronics And Communication Engineering</option>
                                            <option>Electrical And Electronics Engineering</option>
                                            <option>Electrical Engineering</option>
                                            <option>Mechanical Engineering</option>
                                        </select>
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
                                <div class="small"><a href="index.php">Have an account? Go to login</a></div>
                                <div class="small"><a href="../index.php">Back to Home</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </main>
    <?php include_once('../includes/footer.php'); ?>

</body>

</html>