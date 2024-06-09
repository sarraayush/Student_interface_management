<?php

session_start();
session_destroy();
setcookie("arraySize", "", time() - 3600);
setcookie("index", "", time() - 3600);
setcookie("lg", "", time() - 3600);
setcookie("pgerfresh", "", time() - 3600);
setcookie("subjectArrayCookie", "", time() - 3600);
setcookie("subjectCodeArrayCookie", "", time() - 3600);

?>

<script language="javascript">
    document.location = "index.php";
</script>