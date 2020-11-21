<?php

session_start();

// 2. Unset all the session variables
unset($_SESSION['MEMBER_ID']);
unset($_SESSION['FIRST_NAME']);
unset($_SESSION['LAST_NAME']);
unset($_SESSION['GENDER']);
unset($_SESSION['EMAIL']);
unset($_SESSION['PHONE_NUMBER']);
unset($_SESSION['JOB_TITLE']);
unset($_SESSION['PROVINCE']);
unset($_SESSION['CITY']);
unset($_SESSION['TYPE']);
unset($_SESSION['pointofsale']);
?>
<script type="text/javascript">
    window.location = "login.php";
</script>