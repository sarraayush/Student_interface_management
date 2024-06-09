<?php session_start();
include_once('../includes/config.php');
if (strlen($_SESSION['facultyid'] == 0)) {
    header('location:logout.php');
} else {
    if (isset($_POST['add'])) {
        $year = $_POST['year'];
        $semester = $_POST['semester'];
        $subject = $_POST['subject'];
        $subcode = $_POST['subcode'];
        $CO1 = $_POST['CO1'];
        $CO2 = $_POST['CO2'];
        $CO3 = $_POST['CO3'];
        $CO4 = $_POST['CO4'];
        $CO5 = $_POST['CO5'];
        $CO6 = $_POST['CO6'];

        $msg = mysqli_query($con, "
                     INSERT INTO courseoutcomes(year, semester, subject, subjectcode, CO1, CO2, CO3, CO4, CO5, CO6)
                     VALUES ('$year', '$semester', '$subject', '$subcode', '$CO1', '$CO2', '$CO3', '$CO4', '$CO5', '$CO6')
                     ON DUPLICATE KEY UPDATE
                     CO1 = '$CO1',
                     CO2 = '$CO2',
                     CO3 = '$CO3',
                     CO4 = '$CO4',
                     CO5 = '$CO5',
                     CO6 = '$CO6'
                 ");
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
    <title>Add Course Outcome</title>
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
    </script>
    <script>
        // Function to update semester options based on the selected year
        function updateSemesterOptions() {
            var yearSelect = document.getElementById('year');
            var semesterSelect = document.getElementById('semester');

            // Clear existing options
            semesterSelect.innerHTML = '';

            // Add new options based on the selected year
            if (yearSelect.value === '2') {
                addOption(semesterSelect, '3', '3');
                addOption(semesterSelect, '4', '4');
            } else if (yearSelect.value === '3') {
                addOption(semesterSelect, '5', '5');
                addOption(semesterSelect, '6', '6');
            } else if (yearSelect.value === '4') {
                addOption(semesterSelect, '7', '7');
                addOption(semesterSelect, '8', '8');
            }
        }

        // Helper function to add an option to a select element
        function addOption(selectElement, value, text) {
            var option = document.createElement('option');
            option.value = value;
            option.text = text;
            selectElement.add(option);
        }
    </script>




</head>

<body class="sb-nav-fixed">
    <?php include_once('includes/navbar.php'); ?>
    <div id="layoutSidenav">
        <?php include_once('includes/sidebar.php'); ?>
        <div id="layoutSidenav_content">
            <div id="layoutAuthentication">
                <div id="layoutAuthentication_content">
                    <main>
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-7">
                                    <div class="card shadow-lg border-0 rounded-lg mt-5">
                                        <div class="card-header">
                                            <h2 align="center">Manage Course Outcomes</h2>
                                            <hr />

                                            <div class="card-body">
                                                <form method="post" name="signup" onsubmit="return checkpass();">

                                                    <div class="row mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <select class="form-control" id="year" name="year" onchange="updateSemesterOptions()" required>
                                                                    <option value="" selected disabled>Select Year</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <select class="form-control" id="semester" name="semester" required>
                                                                    <option value="" selected disabled>Select Semester</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <select class="form-control" id="subject" name="subject" required>
                                                                    <option value="" selected disabled>Select Subject</option>
                                                                    <?php
                                                                    $facultyId = $_SESSION['facultyid'];
                                                                    $sql = "SELECT subjectalloted.year, subjectalloted.semester, subjectalloted.section, subjectalloted.suballoted, subjects.subject FROM `subjectalloted` INNER JOIN subjects ON subjectalloted.suballoted=subjects.subjectcode INNER JOIN faculty ON faculty.email=subjectalloted.facultyemail WHERE faculty.id=$facultyId";
                                                                    $result = mysqli_query($con, $sql);

                                                                    if ($result) {
                                                                        while ($row = mysqli_fetch_array($result)) {
                                                                    ?>
                                                                            <option value="<?php echo $row['subject']; ?>"><?php echo $row['subject']; ?></option>
                                                                    <?php
                                                                        }
                                                                    }

                                                                    ?>
                                                                </select>
                                                            </div>
                                                        </div>


                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <select class="form-control" id="subcode" name="subcode" required>
                                                                    <option value="" selected disabled>Select Subject Code</option>
                                                                    <?php
                                                                    $facultyId = $_SESSION['facultyid'];
                                                                    $sql = "SELECT subjectalloted.year, subjectalloted.semester, subjectalloted.section, subjectalloted.suballoted, subjects.subject FROM `subjectalloted` INNER JOIN subjects ON subjectalloted.suballoted=subjects.subjectcode INNER JOIN faculty ON faculty.email=subjectalloted.facultyemail WHERE faculty.id=$facultyId";
                                                                    $result = mysqli_query($con, $sql);

                                                                    if ($result) {
                                                                        while ($row = mysqli_fetch_array($result)) {
                                                                    ?>
                                                                            <option value="<?php echo $row['suballoted']; ?>"><?php echo $row['suballoted'] . ' - ' . $row['subject']; ?></option>
                                                                    <?php
                                                                        }
                                                                    }

                                                                    ?>
                                                                </select>
                                                            </div>
                                                        </div>


                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input class="form-control" id="CO1" name="CO1" type="text" required>
                                                        <label for="inputCO1">CO1</label>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input class="form-control" id="CO2" name="CO2" type="text" required>
                                                        <label for="inputCO1">CO2</label>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input class="form-control" id="CO3" name="CO3" type="text" required>
                                                        <label for="inputCO1">CO3</label>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input class="form-control" id="CO4" name="CO4" type="text" required>
                                                        <label for="inputCO1">CO4</label>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input class="form-control" id="CO5" name="CO5" type="text" required>
                                                        <label for="inputCO1">CO5</label>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input class="form-control" id="CO6" name="CO6" type="text" required>
                                                        <label for="inputCO1">CO6</label>
                                                    </div>

                                                    <div class="mt-4 mb-0">
                                                        <div class="d-grid"><button type="submit" class="btn btn-primary btn-block" name="add">Submit</button></div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="card-footer text-center py-3">
                                                <div class="small"><a href="dashboard.php">Back to Home</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
                <?php include_once('../includes/footer.php'); ?>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
            <script src="../js/scripts.js"></script>
        </div>
    </div>
</body>

</html>