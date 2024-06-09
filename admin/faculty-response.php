<?php session_start();
include_once('../includes/config.php');
if (strlen($_SESSION['adminid'] == 0)) {
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
        <title>Admin Dashboard | JSSATEN-FMS</title>
        <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
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
                    <div class="container-fluid px-4" id="tblCustomers" style="position:relative; bottom:2.5rem">
                        <h1 class="mt-5 text-center">Feedback Report</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Feedback Report</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header mt-8">
                                <i class="fas fa-table me-1"></i>
                                Feedback Responses
                            </div>
                            <div class="card-body " id="tbl_exporttable_to_xls">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>First Name</th>
                                            <!-- <th> Last Name</th> -->
                                            <th> Email Id</th>
                                            <!-- <th>Session</th> -->
                                            <!-- <th>Semester Type</th> -->
                                            <th>Year</th>
                                            <th>Semester</th>
                                            <!-- <th>Section</th> -->
                                            <th>Subject Code</th>
                                            <th>Subject Name</th>
                                            <!-- <th>Subject Feedback<br>(Out Of 5)</th> -->
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
                                            <th>Sno.</th>
                                            <th>First Name</th>
                                            <!-- <th> Last Name</th> -->
                                            <th> Email Id</th>
                                            <!-- <th>Session</th> -->
                                            <!-- <th>Semester Type</th> -->
                                            <th>Year</th>
                                            <th>Semester</th>
                                            <!-- <th>Section</th> -->
                                            <th>Subject Code</th>
                                            <th>Subject Name</th>
                                            <!-- <th>Subject Feedback<br>(Out Of 5)</th> -->
                                            <th>CO-1</th>
                                            <th>CO-2</th>
                                            <th>CO-3</th>
                                            <th>CO-4</th>
                                            <th>CO-5</th>
                                            <th>CO-6</th>
                                            <th>Average CO Rating</th>
                                        </tr>
                                    </tfoot>
                                    <tbody class="tbodyDisplay">
                                        <?php
                                        $sql = "SELECT faculty.fname, faculty.lname, faculty.email, facultyresponse.year, facultyresponse.semester, facultyresponse.suballoted, subjects.subject, 
                                        facultyresponse.co1,
                                        facultyresponse.co2,
                                        facultyresponse.co3,
                                        facultyresponse.co4,
                                        facultyresponse.co5,
                                        facultyresponse.co6
                                    FROM faculty
                                    LEFT JOIN facultyresponse ON faculty.email = facultyresponse.facultyemail
                                    LEFT JOIN subjects ON subjects.subjectcode = facultyresponse.suballoted";

                                        $ret = mysqli_query($con, $sql);
                                        $cnt = 1;

                                        while ($row = mysqli_fetch_array($ret)) {
                                            $co1 = $row['co1'];
                                            $co2 = $row['co2'];
                                            $co3 = $row['co3'];
                                            $co4 = $row['co4'];
                                            $co5 = $row['co5'];
                                            $co6 = $row['co6'];
                                            $averageCO = ($co1 + $co2 + $co3 + $co4 + $co5 + $co6) / 6;
                                        ?>
                                            <tr>
                                                <td><?php echo $cnt; ?></td>
                                                <td><?php echo $row['fname'] . " " . $row['lname']; ?></td>
                                                <td><?php echo $row['email']; ?></td>
                                                <td><?php echo $row['year']; ?></td>
                                                <td><?php echo $row['semester']; ?></td>
                                                <td>
                                                    <?php
                                                    $suballoted_display = explode(" ", $row['suballoted']);
                                                    echo $suballoted_display[0];
                                                    ?>
                                                </td>
                                                <td><?php echo $row['subject']; ?></td>
                                                <td><?php echo $co1 | 0; ?></td>
                                                <td><?php echo $co2 | 0; ?></td>
                                                <td><?php echo $co3 | 0; ?></td>
                                                <td><?php echo $co4 | 0; ?></td>
                                                <td><?php echo $co5 | 0; ?></td>
                                                <td><?php echo $co6 | 0; ?></td>
                                                <td><?php echo round($averageCO, 2); ?></td>
                                            </tr>
                                        <?php
                                            $cnt++;
                                        }
                                        ?>

                                    </tbody>
                                </table>
                                <button id="btnExport" onclick="Export()" type="button" class="btn btn-outline-primary">Download</button>
                                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
                                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js">
                                </script>
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
                                <!-- <script>

        function ExportToExcel(type, fn, dl) {
            var elt = document.getElementById('tbl_exporttable_to_xls');
            var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
            return dl ?
                XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
                XLSX.writeFile(wb, fn || ('Feedback Respones.' + (type || 'xlsx')));
        }

    </script> -->
                            </div>
                        </div>


                    </div>


                </main>
                <?php include_once('../includes/footer.php'); ?>
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