<?php
session_start();
include_once('../includes/config.php');
if (strlen($_SESSION['facultyid'] == 0)) {
    header('location:logout.php');
} else {

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
        <title>Faculty Dashboard | JSSATEN-FMS </title>
        <!-- <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script> -->
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
                    <div class="container-fluid px-4" id="tblCustomers">
                        <h1 class="mt-4">Feedback Report</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Feedback Report</li>
                        </ol>
                        <?php
                        $facultyid = $_SESSION['facultyid'];
                        $query = mysqli_query($con, "select * from faculty where id='$facultyid'");
                        while ($result = mysqli_fetch_array($query)) { ?>
                            Feedback Report Of
                            <span style="font-size:22px;">
                                <?php echo $result['fname'] . " " . $result['lname']; ?>
                            </span>
                        <?php
                        } ?>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Feedback Responses
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Year</th>
                                            <th>Semester</th>
                                            <th>Section</th>
                                            <th>Subject Code</th>
                                            <th>Subject Name</th>
                                            <th>CO-1</th>
                                            <th>CO-2</th>
                                            <th>CO-3</th>
                                            <th>CO-4</th>
                                            <th>CO-5</th>
                                            <th>CO-6</th>
                                            <th>Average CO Rating</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Year</th>
                                            <th>Semester</th>
                                            <th>Section</th>
                                            <th>Subject Code</th>
                                            <th>Subject Name</th>
                                            <th>CO-1</th>
                                            <th>CO-2</th>
                                            <th>CO-3</th>
                                            <th>CO-4</th>
                                            <th>CO-5</th>
                                            <th>CO-6</th>
                                            <th>Average CO Rating</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $id1 = $_SESSION['facultyid'];
                                        $sql1 = "SELECT
                                                subjectalloted.year,
                                                subjectalloted.semester,
                                                subjectalloted.section,
                                                subjectalloted.suballoted,
                                                subjects.subject,
                                                ROUND(AVG(respone.co1), 2) as co1,
                                                ROUND(AVG(respone.co2), 2) as co2,
                                                ROUND(AVG(respone.co3), 2) as co3,
                                                ROUND(AVG(respone.co4), 2) as co4,
                                                ROUND(AVG(respone.co5), 2) as co5,
                                                ROUND(AVG(respone.co6), 2) as co6,
                                                ROUND(AVG((respone.co1 + respone.co2 + respone.co3 + respone.co4 + respone.co5 + respone.co6) / 6), 2) as avg_co_rating,
                                                users.section
                                            FROM
                                                faculty
                                            INNER JOIN subjectalloted ON subjectalloted.facultyemail = faculty.email
                                            INNER JOIN subjects ON subjects.subjectcode = subjectalloted.suballoted
                                            INNER JOIN respone ON respone.facultyemail = faculty.email
                                            INNER JOIN users ON respone.usersemail = users.email
                                            WHERE
                                                faculty.id = $id1
                                                AND users.section = subjectalloted.section
                                            GROUP BY
                                                subjectalloted.year,
                                                subjectalloted.semester,
                                                subjectalloted.section,
                                                subjectalloted.suballoted,
                                                subjects.subject,
                                                users.section;";
                                        $ret = mysqli_query($con, $sql1);
                                        while ($row = mysqli_fetch_array($ret)) { ?>
                                            <tr>
                                                <td><?php echo $row['year']; ?></td>
                                                <td><?php echo $row['semester']; ?></td>
                                                <td><?php echo $row['section']; ?></td>
                                                <td><?php echo explode(" ", $row['suballoted'])[0]; ?></td>
                                                <td><?php echo $row['subject']; ?></td>
                                                <td><?php echo $row['co1']; ?></td>
                                                <td><?php echo $row['co2']; ?></td>
                                                <td><?php echo $row['co3']; ?></td>
                                                <td><?php echo $row['co4']; ?></td>
                                                <td><?php echo $row['co5']; ?></td>
                                                <td><?php echo $row['co6']; ?></td>
                                                <td><?php echo $row['avg_co_rating']; ?></td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                                <button id="btnExport" onclick="Export()" type="button" class="btn btn-outline-primary">Download</button>
                                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
                                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
                                <script type="text/javascript">
                                    function Export() {
                                        html2canvas(document.getElementById('tblCustomers'), {
                                            onrendered: function(canvas) {
                                                var data = canvas.toDataURL();
                                                var docDefinition = {
                                                    content: [{
                                                        image: data,
                                                        width: 500
                                                    }]
                                                };
                                                pdfMake.createPdf(docDefinition).download("Feedback Report.pdf");
                                            }
                                        });
                                    }
                                </script>
                            </div>
                        </div>
                    </div>
                </main>
                <?php include_once('../includes/footer.php'); ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
    </body>

    </html>
<?php } ?>