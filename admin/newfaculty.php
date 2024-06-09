<?php session_start();
include_once('../includes/config.php');
if (strlen($_SESSION['adminid'] == 0)) {
    header('location:logout.php');
} else {
    // for deleting faculty
    if (isset($_GET['id'])) {
        $adminid = $_GET['id'];
        $msg = mysqli_query($con, "delete from faculty where 'id'='$adminid'");
        if ($msg) {
            echo "<script>alert('Data deleted');</script>";
        }
    }
    // for Updating faculty
    if (isset($_GET['approve_id'])) {
        $adminid = $_GET['approve_id'];
        $msg = mysqli_query($con, "update faculty SET status = 1 Where id='$adminid'");
        if ($msg) {
            echo "<script>alert('Approved..');</script>";
        } else {
            echo "Error: " . mysqli_error($con);
        }
    }
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <link rel="shortcut icon" href="../assets/img/jsslogoicon.png" type="image/x-icon">

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSSATEN-Noida</title>
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
                    <div class="container-fluid px-4" id="tblCustomers">
                        <h1 class="mt-4">Manage Faculty</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Manage Faculty </li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                New Registered Faculty
                            </div>
                            <div class="card-body" id="tbl_exporttable_to_xls">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>First Name</th>
                                            <th> Last Name</th>
                                            <th> Email Id</th>
                                            <th>Designation</th>
                                            <!-- <th>Subject Allotted</th> -->
                                            <th>Edit</th>
                                            <th>Approve</th>
                                            <th>Delete</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>First Name</th>
                                            <th> Last Name</th>
                                            <th> Email Id</th>
                                            <th>Designation</th>
                                            <!-- <th>Subject Allotted</th> -->
                                            <th>Action</th>
                                            <th>Status</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php $ret = mysqli_query($con, "select * from faculty where status = 0");
                                        $cnt = 1;
                                        while ($row = mysqli_fetch_array($ret)) { ?>
                                            <tr>
                                                <td><?php echo $cnt; ?></td>
                                                <td><?php echo $row['fname']; ?></td>
                                                <td><?php echo $row['lname']; ?></td>
                                                <td><?php echo $row['email']; ?></td>
                                                <td><?php echo $row['designation']; ?></td>
                                                <!-- <td><?php echo $row['subjectalloted']; ?></td> -->
                                                <td>

                                                    <a href="faculty-profile.php?uid=<?php echo $row['id']; ?>">
                                                        <i class="fas fa-edit"></i></a>
                                                </td>
                                                <td>
                                                    <a href="newfaculty.php?approve_id=<?php echo $row['id']; ?>" onClick="return confirm('Do you want to approve this faculty');"><i class="fa fa-check" aria-hidden="true"></i></a>
                                                </td>
                                                <td>
                                                    <a href="newfaculty.php?id=<?php echo $row['id']; ?>" onClick="return confirm('Do you really want to delete');"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                </td>
                                                <td><?php echo $row['status']; ?></td>

                                            </tr>
                                        <?php $cnt = $cnt + 1;
                                        } ?>

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
                                                pdfMake.createPdf(docDefinition).download("Faculty Registered.pdf");
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
        XLSX.writeFile(wb, fn || ('Faculty Database.' + (type || 'xlsx')));
}

</script> -->
                            </div>
                        </div>
                    </div>
                </main>
                <?php include('../includes/footer.php'); ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
        </script>
        <script src="../js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
    </body>

    </html>
<?php } ?>