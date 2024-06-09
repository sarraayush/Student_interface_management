<?php
session_start();
include_once('../includes/config.php');

if (strlen($_SESSION['adminid'] == 0)) {
    header('location:logout.php');
} else {

    $insert = false;

    if (isset($_POST['add'])) {

        $year = isset($_POST['year']) ? $_POST['year'] : '';
        $semester = isset($_POST['semester']) ? $_POST['semester'] : '';
        $section_ = isset($_POST['section_']) ? $_POST['section_'] : '';
        $subjectcode = isset($_POST['subjectcode']) ? $_POST['subjectcode'] : '';
        $subject = isset($_POST['subject']) ? $_POST['subject'] : '';

        // Concatenate subjectcode and section_
        $subjectcodeNew = $subjectcode . " " . explode(" ", $section_)[0];

        // Check if subjectcode already exists
        $checkSql = "SELECT * FROM `subjects` WHERE `subjectcode` = '$subjectcodeNew'";
        $result = $con->query($checkSql);

        if ($result->num_rows > 0) {
            // Subject code already exists, you can choose to update the existing record or handle it accordingly
            echo "<script>alert('Subject code $subjectcodeNew already exists. Please choose a different subject code.')</script>";
        } else {
            // Subject code doesn't exist, proceed with the insertion
            $sql = "INSERT INTO `subjects` (`year`, `semester`, `section_`, `subjectcode`, `subject`) VALUES  ('$year', '$semester', '$section_', '$subjectcodeNew', '$subject')";

            if ($con->query($sql) === true) {
                $insert = true;
            } else {
                echo "<p class='red'>ERROR: $sql <br> $con->error</p>";
            }
        }
    }
}
?>


<!doctype html>
<html lang="en">

<head>
    <link rel="shortcut icon" href="../assets/img/jsslogoicon.png" type="image/x-icon">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Add Subject | JSSATEN-FMS</title>
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

                    <h1 class="mt-4">Subject Details</h1>
                    <hr>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                        <li class="breadcrumb-item active">Add Subjects</li>
                    </ol>
                    <div class="card mb-4">
                        <form method="post">
                            <?php
                            if ($insert == true) {
                                echo "<script>alert('Subject added successfully!!')</script>";
                            }
                            ?>
                            <div class="card-body">
                                <table class="table table-bordered">
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
                                            <select name="section_" class="form-control" id="section_">
                                                <option selected disabled>Section</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <script>
                                        // Execute the code when the document is ready
                                        $(document).ready(function() {
                                            // Handle the change event of the year dropdown
                                            $('#year').change(function() {
                                                // Get the selected value of the year dropdown
                                                var selectedYear = $(this).val();

                                                // Clear existing options in the semester and section dropdowns
                                                $('#semester').empty();
                                                $('#section_').empty();

                                                // Add options based on the selected year
                                                if (selectedYear === '2') {
                                                    // If year is 2, display semesters 3, 4 and sections IT 1, IT 2, IT 3, CSDS 1, CSDS 2
                                                    $('#semester').append('<option selected disabled>Semester</option>');
                                                    $('#semester').append('<option value="3">3</option>');
                                                    $('#semester').append('<option value="4">4</option>');

                                                    $('#section_').append('<option selected disabled>Section</option>');
                                                    $('#section_').append('<option value="IT">IT</option>');

                                                    $('#section_').append('<option value="CSDS">CSDS</option>');
                                                } else if (selectedYear === '3') {
                                                    // If year is 3, display semesters 5, 6 and sections IT 1, IT 2, CSDS
                                                    $('#semester').append('<option selected disabled>Semester</option>');
                                                    $('#semester').append('<option value="5">5</option>');
                                                    $('#semester').append('<option value="6">6</option>');

                                                    $('#section_').append('<option selected disabled>Section</option>');
                                                    $('#section_').append('<option value="IT">IT</option>');
                                                    $('#section_').append('<option value="CSDS">CSDS</option>');
                                                } else if (selectedYear === '4') {
                                                    // If year is 4, display semesters 7, 8 and sections IT 1, IT 2
                                                    $('#semester').append('<option selected disabled>Semester</option>');
                                                    $('#semester').append('<option value="7">7</option>');
                                                    $('#semester').append('<option value="8">8</option>');

                                                    $('#section_').append('<option selected disabled>Section</option>');
                                                    $('#section_').append('<option value="IT">IT</option>');
                                                }
                                                // Add more conditions as needed
                                            });
                                        });
                                    </script>
                                    <tr>
                                        <th>Subject Code</th>
                                        <td><input class="form-control" id="subjectcode" name="subjectcode" type="text" required /></td>
                                    </tr>
                                    <tr>
                                        <th>Subject</th>
                                        <td><input class="form-control" id="subject" name="subject" type="text" required /></td>
                                    </tr>

                                    <tr>
                                        <td colspan="4" style="text-align:center ;"><button type="submit" class="btn btn-primary btn-block" name="add">Add</button></td>

                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                    <?php  ?>
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
    <script src="../js/add-subject.js"></script>
</body>

</html>