<?php
session_start();
include_once('../includes/config.php');

// Check if the admin is logged in
if (strlen($_SESSION['adminid']) == 0) {
    header('location:logout.php');
    exit();
} else {
    // Check if user deletion is requested
    if (isset($_GET['id'])) {
        $adminid = $_GET['id'];
        $msg = mysqli_query($con, "DELETE FROM users WHERE id='$adminid'");
        if ($msg) {
            echo "<script>alert('Data deleted');</script>";
        }
    }
}

$year = isset($_POST['year']) ? $_POST['year'] : '2'; // Default to 2 if not selected
$sql = "SELECT year, subjectcode, subject, CO1, CO2, CO3, CO4, CO5, CO6 FROM courseoutcomes WHERE year = '$year'";
$result = mysqli_query($con, $sql);
?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="shortcut icon" href="../assets/img/jsslogoicon.png" type="image/x-icon">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Course Outcomes | JSSATEN-FMS</title>
    <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/coa.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>

    <script>
        // JavaScript to automatically submit the form on dropdown change
        function onYearChange() {
            document.getElementById("yearForm").submit();
        }
    </script>
</head>

<body class="sb-nav-fixed">
    <?php include_once('includes/navbar.php'); ?>
    <div id="layoutSidenav">
        <?php include_once('includes/sidebar.php'); ?>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Course Outcomes</h1>
                    <hr>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                        <li class="breadcrumb-item active">Course Outcomes</li>
                    </ol>
                    <div class="card-body">
                        <form method="post" action="" id="yearForm" style="border:none; border-radius:15px;">
                            <table>
                                <tr>
                                    <th>Year
                                        <select id="year" name="year" onchange="onYearChange()">
                                            <option value="2" <?php if ($year == '2') echo 'selected'; ?>>2</option>
                                            <option value="3" <?php if ($year == '3') echo 'selected'; ?>>3</option>
                                            <option value="4" <?php if ($year == '4') echo 'selected'; ?>>4</option>
                                        </select>
                                    </th>
                                    <th>Subject Code</th>
                                    <th>Subject</th>
                                    <th class="coa">CO1</th>
                                    <th class="coa">CO2</th>
                                    <th class="coa">CO3</th>
                                    <th class="coa">CO4</th>
                                    <th class="coa">CO5</th>
                                    <th class="coa">CO6</th>
                                </tr>
                                <?php
                                if (mysqli_num_rows($result) > 0) {
                                    // Output data of each row
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo "<tr><td>" . $row["year"] . "</td><td>" . $row["subjectcode"] . "</td><td>" . $row["subject"] . "</td><td>" . $row["CO1"] . "</td><td>" . $row["CO2"] . "</td><td>" . $row["CO3"] . "</td><td>" . $row["CO4"] . "</td><td>" . $row["CO5"] . "</td><td>" . $row["CO6"] . "</td></tr>";
                                    }
                                } else {
                                    echo "<tr><td colspan='10'>0 results</td></tr>";
                                }
                                ?>

                            </table>
                        </form>
                    </div>
                </div>
            </main>
            <?php include('../includes/footer.php'); ?>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="../js/datatables-simple-demo.js"></script>
</body>

</html>