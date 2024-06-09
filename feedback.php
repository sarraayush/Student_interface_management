<?php session_start();
include_once('includes/config.php');
if (strlen($_SESSION['id'] == 0)) {
    header('location:logout.php');
} else {

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
        <title>Student Dashboard | JSSATEN-FMS </title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
        </script>
        <?php
        $id_user = $_SESSION['id'];
        $sql6 = "select feedback from users where id = '$id_user'";
        $feedback_re = mysqli_query($con, $sql6);
        $result = mysqli_fetch_assoc($feedback_re);
        $feedback_value = $result['feedback'];
        if ($feedback_value == 1) {
            echo "<script>window.location.replace('thankyou.php')</script>";
        }
        ?>
        <script>
            if (document.cookie.indexOf("lg") != -1) {
                var i = document.cookie.indexOf("index");
                let currentIndexValue = document.cookie[i + 6];
                console.log('Current Index Value : ' + currentIndexValue)
                var l = document.cookie.indexOf("pgerfresh");
                let pageRefreshValue = document.cookie[l + 10] - '0';
                if (pageRefreshValue == 0) {
                    document.cookie = 'pgerfresh=' + (++pageRefreshValue);
                    location.reload();
                }
                let arraysize = document.cookie.charAt(document.cookie.indexOf("arraySize") + 10);
                console.log('Array Size : ' + arraysize)
                if (currentIndexValue >= arraysize) {
                    window.location.replace("thankyou.php");
                }
                // else
                // document.cookie="index="+(currentIndexValue++);

            }
            //document.cookie.charAt(document.cookie.indexOf("index")+6)-'0'
        </script>
    </head>
    <?php
    if (!isset($_COOKIE["lg"])) {
        setcookie("lg", "ro");
        setcookie("pgerfresh", 0);

        global $subjectArray;
        $id1 = $_SESSION['id'];


        $sql4 = "select section from users where id= '$id1'";
        $result4 = mysqli_query($con, $sql4);
        $row4 = mysqli_fetch_assoc($result4);
        $section = $row4['section'];
        $delimiter = ' ';
        $words = explode($delimiter, $section);
        global $fsection;
        $fsection = $words[0];

        $sql = mysqli_query($con, "select subject, subjectcode from subjects where semester= (select semester from users where id = $id1) and section_= '$fsection'");
        $subjectArray = array();
        $subjectCodeArray = array();
        while ($result = mysqli_fetch_assoc($sql)) {
            $subjectArray[] = $result['subject'];
            // echo '<script>console.log("Subject Name : ' . $result['subject'] . '")</script>';
            $subjectCodeArray[] = $result['subjectcode'];
            // echo '<script>console.log("Subject Code : ' . $result['subjectcode'] . '")</script>';
        }
        setcookie('subjectArrayCookie', json_encode($subjectArray), time() + 2147483647);
        setcookie('subjectCodeArrayCookie', json_encode($subjectCodeArray), time() + 2147483647);
        $indexCookie = "index";
        $indexValue = 0;
        setcookie($indexCookie, $indexValue, time() + 2147483647);
        $arraySizeCookie = "arraySize";
        $arraySizeValue = sizeof($subjectArray);
        setcookie($arraySizeCookie,  $arraySizeValue, time() + 2147483647);
        // setcookie('tempIndex', 0 , time() + 3600 );
    }
    // if($_COOKIE['index'] == $_COOKIE['arraySize'])
    // {
    //     // 301 Moved Permanently
    //     // header("Location: http://google.com/", true, 301);
    //     // exit();

    // }


    ?>

    <body class="sb-nav-fixed">
        <?php include_once('includes/navbar.php'); ?>
        <div id="layoutSidenav">
            <?php include_once('includes/sidebar.php'); ?>
            <div id="layoutSidenav_content">
                <main>




                    <div class="m-5 mt-2 mb-0">
                        <?php
                        // extract($_POST);
                        // if(isset($sub))

                        $data = json_decode($_COOKIE['subjectArrayCookie'], true);
                        // echo "<script>console.log('Subject Name : $data[0]')</script>";
                        $dataCode = json_decode($_COOKIE['subjectCodeArrayCookie'], true);
                        $index = $_COOKIE['index'];

                        global $sub;
                        global $subCode;
                        $sub = $data[$index];
                        $subCode = $dataCode[$index];
                        $sub1  = $sub;
                        $subCode1  = $subCode;
                        $subparts = explode(" ", $subCode1);
                        $subCode_display = $subparts[0];
                        $_POST['subject'] = $sub1;
                        $_POST['subjectcode'] = $subCode1;
                        // echo $sub;

                        // $sql5 = "select subjectcode from subjects where subject= '$sub'";
                        // $result5= mysqli_query($con , $sql5);
                        // $row5 = mysqli_fetch_assoc($result5);

                        // $subjectCode = $row5['subjectcode'];
                        // global $subjectCode;
                        // $subCode1  = $subjectCode;
                        // $_POST['subjectcode'] = $subCode1;

                        echo "<strong>Subject Name : $sub ($subCode_display)</strong><br>";
                        //Count total Votes
                        $r = mysqli_query($con, "select * from courseoutcomes where subject='$sub'");
                        $c = mysqli_num_rows($r);
                        // $GLOBALS['sub'] = $sub;
                        // echo "<h4>Total Student Attempts : ".$c."</h4>";
                        // $result = mysqli_query($con, $r);
                        $row = mysqli_fetch_assoc($r);
                        $cols = mysqli_num_fields($r) - 1;

                        $GLOBALS['cols'];
                        // $GLOBALS['subject'];

                        for ($t = 1; $t <= $cols; $t++) {
                            $str = "CO" . $t;
                            if (isset($row[$str]))
                                echo "<b>" . $str . " : </b> " . $row[$str] . '<br>';
                            else {
                                global $co_numbers;
                                $co_numbers = $t;
                                break;
                            }
                        }

                        ?>

                    </div>

                    <form method="post" style="border: 0;">
                        <div class="p-4 d-flex bd-highlight">
                            <div class="p-4 w-30 flex-fill bd-highlight">
                                <h2>Course Outcome Feedback<sup>*</sup></h2>
                                <!-- <div class="container">
                                    <div class="row">
                                        <div class="col-sm" style="border: 1px solid black;">
                                            3 - High
                                        </div>
                                        <div class="col-sm" style="border: 1px solid black;">
                                            2 - Medium
                                        </div>
                                        <div class="col-sm" style="border: 1px solid black;">
                                            1 - Low
                                        </div>


                                    </div>
                                </div> -->
                                <table class="table table-bordered">
                                    <tr class="bg-light">
                                        <th>
                                        </th>
                                        <th>
                                            3 - High
                                        </th>
                                        <th>
                                            2 - Medium
                                        </th>
                                        <th>
                                            1 - Low
                                        </th>
                                    </tr>
                                    <tr class="bg-light">
                                        <th>
                                            <span>CO1</span>
                                        </th>
                                        <td id="opt_co1_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co1" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_co1_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co1" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_co1_1">
                                            <div class="form-check my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co1" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="bg-light">
                                        <th>
                                            <span>CO2</span>
                                        </th>
                                        <td id="opt_co2_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co2" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_co2_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co2" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_co2_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co2" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="bg-light">
                                        <th>
                                            <span>CO3</span>
                                        </th>
                                        <td id="opt_co3_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co3" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_co3_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co3" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_co3_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co3" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="bg-light">
                                        <th>
                                            <span>CO4</span>
                                        </th>
                                        <td id="opt_co4_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co4" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_co4_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co4" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_co4_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co4" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="bg-light">
                                        <th>
                                            <span>CO5</span>
                                        </th>
                                        <td id="opt_co5_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co5" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_co5_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co5" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_co5_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co5" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="bg-light co6">
                                        <th>
                                            <span>CO6</span>
                                        </th>
                                        <td id="opt_co6_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co6" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_co6_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co6" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_co6_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="co6" id="inlineRadio1" value="1" />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <?php
                                    $cols = 0;
                                    if (isset($GLOBALS['cols']))
                                        $cols = $GLOBALS['cols'];
                                    if ($cols != 6) {

                                        echo "<script>document.getElementsByClassName('co6')[0].style.display = 'none';</script>";
                                    }
                                    ?>
                                </table>
                            </div>

                            <!-- <div class="p-4 flex-fill bd-highlight">
                                <span>
                                    <h2>Subject Feedback <sup>*</sup></h2>
                                </span>
                                <table class="table table-bordered">
                                    <tr class="bg-light">
                                        <th></th>
                                        <th>
                                            <div class="col-sm">
                                                4 - Excellent
                                            </div>
                                        </th>
                                        <th>
                                            <div class="col-sm">
                                                3 - Good
                                            </div>
                                        </th>
                                        <th>
                                            <div class="col-sm">
                                                2 - Average
                                            </div>
                                        </th>
                                        <th>
                                            <div class="col-sm">
                                                1 - Poor
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="bg-light">
                                        <th><span>Adequate Assignments/Quiz/Tutorial Conducted</span></th>
                                        <td id="opt_sb1_4">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb1" id="inlineRadio2" value="4" />
                                                <label class="form-check-label" for="inlineRadio2">4</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb1_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb1" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb1_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb1" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb1_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb1" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>

                                    </tr>
                                    <tr class="bg-light">
                                        <th><span>Class Room Discipline</span> </td>
                                        <td id="opt_sb2_4">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb2" id="inlineRadio2" value="4" />
                                                <label class="form-check-label" for="inlineRadio2">4</label>
                                            </div>

                                        </td>
                                        <td id="opt_sb2_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb2" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>

                                        </td>
                                        <td id="opt_sb2_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb2" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb2_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb2" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr class="bg-light">
                                        <th><span>Organization of Lecture & Clarity of delivery</span></th>
                                        <td id="opt_sb3_4">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb3" id="inlineRadio2" value="4" />
                                                <label class="form-check-label" for="inlineRadio2">4</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb3_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb3" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb3_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb3" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb3_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb3" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>

                                    </tr>


                                    <tr class="bg-light">

                                        <th>
                                            <span>Course Coverage</span>
                                        </th>
                                        <td id="opt_sb4_4">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb4" id="inlineRadio2" value="4" />
                                                <label class="form-check-label" for="inlineRadio2">4</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb4_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb4" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb4_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb4" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb4_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb4" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr class="bg-light">
                                        <th>
                                            <span>Course Delivery</span>
                                        </th>
                                        <td id="opt_sb5_4">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb5" id="inlineRadio2" value="4" />
                                                <label class="form-check-label" for="inlineRadio2">4</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb5_3">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb5" id="inlineRadio2" value="3" />
                                                <label class="form-check-label" for="inlineRadio2">3</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb5_2">
                                            <div class="form-check  my-2 pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb5" id="inlineRadio2" value="2" />
                                                <label class="form-check-label" for="inlineRadio2">2</label>
                                            </div>
                                        </td>
                                        <td id="opt_sb5_1">
                                            <div class="form-check my-2  pl-5 form-check-inline">
                                                <input class="form-check-input" type="radio" name="sb5" id="inlineRadio1" value="1" required />
                                                <label class="form-check-label" for="inlineRadio1">1</label>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div> -->
                        </div>

                        <div class="container text-center p-2"><button type="submit" name='insert' onclick="incrementCookie()" class="btn btn-outline-secondary">Next</button></div>
                    </form>

                    </script>

                    <?php
                    // function php_func()
                    // {
                    if (isset($_POST['insert'])) {
                        $co1 = $_POST['co1'];
                        $co2 = $_POST['co2'];
                        $co3 = $_POST['co3'];
                        $co4 = $_POST['co4'];
                        $co5 = $_POST['co5'];
                        if ($GLOBALS['cols'] == 6)
                            $co6 = $_POST['co6'];
                        else
                            $co6 = 0;
                        // echo "aayush";
                        // $responeid=$_SESSION['id'];
                        $id1 = $_SESSION['id'];
                        $sub = $_POST['subject'];
                        $subCode = $_POST['subjectcode'];
                        $sub2 = $data[$index - 1];
                        $subCode2 = $dataCode[$index - 1];

                        // echo "<script>console.log('Subject Name : $sub2')</script>";
                        $uname = mysqli_query($con, "select email from users where id = $id1");
                        $result1 = mysqli_fetch_assoc($uname);
                        $usersemail = $result1['email'];
                        // echo $sub;
                        // echo $subCode;
                        // echo $_COOKIE['index'];
                        $sql1 = "SELECT facultyemail FROM subjectalloted WHERE suballoted = '$subCode2' AND section = (SELECT section FROM users WHERE id = '$id1')";
                        $result2 = mysqli_query($con, $sql1);

                        while ($row1 = mysqli_fetch_assoc($result2)) {
                            $facultyemail = $row1['facultyemail'];

                            // Log faculty email to the console
                            echo "<script>console.log('Faculty Email:', '$facultyemail');</script>";

                            $sql = "INSERT INTO respone (subjectcode,subject,usersemail,facultyemail, co1, co2, co3, co4, co5, co6) VALUES ('$subCode2','$sub2', '$usersemail', '$facultyemail','$co1', '$co2', '$co3', '$co4', '$co5', '$co6')";
                            mysqli_query($con, $sql);
                        }
                        // $sql = "INSERT INTO respone (subjectcode,subject,usersemail,facultyemail, co1, co2, co3, co4, co5, co6, sb1, sb2, sb3, sb4, sb5) VALUES ('$subCode2','$sub2', '$usersemail', '$facultyemail','$co1', '$co2', '$co3', '$co4', '$co5', '$co6', '$sb1', '$sb2', '$sb3', '$sb4', '$sb5')";
                        // mysqli_query($con, $sql);

                        $count = $_COOKIE['arraySize'];
                        if ($index == ($count)) {
                            $sql3 = "UPDATE users SET feedback=1 WHERE email='$usersemail'";
                            mysqli_query($con, $sql3);
                            $sql = "SELECT faculty.fname, faculty.lname, faculty.email, subjectalloted.year, subjectalloted.semester, subjectalloted.suballoted, subjects.subject, 
            ROUND(AVG(respone.co1), 2) AS co1,
            ROUND(AVG(respone.co2), 2) AS co2,
            ROUND(AVG(respone.co3), 2) AS co3,
            ROUND(AVG(respone.co4), 2) AS co4,
            ROUND(AVG(respone.co5), 2) AS co5,
            ROUND(AVG(respone.co6), 2) AS co6
        FROM faculty
        LEFT JOIN subjectalloted ON faculty.email = subjectalloted.facultyemail
        LEFT JOIN subjects ON subjects.subjectcode = subjectalloted.suballoted
        LEFT JOIN respone ON respone.facultyemail = faculty.email AND respone.subjectcode = subjects.subjectcode
        GROUP BY faculty.fname, faculty.lname, faculty.email, subjectalloted.year, subjectalloted.semester, subjectalloted.suballoted, subjects.subject";

                            $ret = mysqli_query($con, $sql);

                            while ($row = mysqli_fetch_array($ret)) {
                                echo $row['subject'];
                                echo "<br>";
                                $insertQuery = "INSERT INTO facultyresponse (
                                facultyemail,
                                year,
                                semester,
                                suballoted,
                                subject,
                                co1,
                                co2,
                                co3,
                                co4,
                                co5,
                                co6
                            ) VALUES (
                                '{$row['email']}',
                                '{$row['year']}',
                                '{$row['semester']}',
                                '{$row['suballoted']}',
                                '{$row['subject']}',
                                '{$row['co1']}',
                                '{$row['co2']}',
                                '{$row['co3']}',
                                '{$row['co4']}',
                                '{$row['co5']}',
                                '{$row['co6']}'
                            ) ON DUPLICATE KEY UPDATE
                                co1 = VALUES(co1),
                                co2 = VALUES(co2),
                                co3 = VALUES(co3),
                                co4 = VALUES(co4),
                                co5 = VALUES(co5),
                                co6 = VALUES(co6)";


                                mysqli_query($con, $insertQuery);
                            }
                        }
                    }
                    //   echo "done finally";
                    // echo "<script>
                    // incrementCookie();
                    // </scri>";
                    // }
                    // solution 
                    ?>

                    <script>
                        function radiocheck() {
                            const radcheck = document.getElementsByClassName('form-check-input');
                            let norad = 0;
                            console.log(radcheck.length);
                            for (i = 0; i < radcheck.length; i++) {
                                console.log(radcheck[i].checked)
                                if (radcheck[i].checked === true) {
                                    norad++;
                                }
                            }
                            console.log(norad)
                            return norad;
                        }
                        async function incrementCookie() {
                            console.log("well that 's it")
                            const norad = await radiocheck()
                            console.log('okay' + norad)
                            if (norad == 5) {
                                console.log("next time")
                                var i = document.cookie.indexOf('index');
                                let currentIndexValue = document.cookie[i + 6] - '0';
                                document.cookie = 'index=' + (++currentIndexValue);
                            }

                        }
                        // incrementCookie(); 
                    </script>


                </main>
                <?php include_once('includes/footer.php'); ?>
            </div>
        </div>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                var ids = [
                    "opt_co1_3", "opt_co1_2", "opt_co1_1",
                    "opt_co2_3", "opt_co2_2", "opt_co2_1",
                    "opt_co3_3", "opt_co3_2", "opt_co3_1",
                    "opt_co4_3", "opt_co4_2", "opt_co4_1",
                    "opt_co5_3", "opt_co5_2", "opt_co5_1",
                    "opt_co6_3", "opt_co6_2", "opt_co6_1",
                ];

                ids.forEach(function(id) {
                    console.log(id);
                    var element = document.getElementById(id);
                    if (element) {
                        element.addEventListener('click', function() {
                            var radioInput = this.querySelector('input[type="radio"]');
                            if (radioInput) {
                                radioInput.click();
                            }
                            // alert(id);
                        });
                    }
                });
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
        </script>
        <script src="./js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="./js/datatables-simple-demo.js"></script>
    </body>

    </html>
<?php } ?>