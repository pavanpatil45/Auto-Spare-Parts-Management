<?php
include('../includes/connection.php');

			$zz = $_POST['id'];
			$a = $_POST['firstname'];
            $b = $_POST['lastname'];
            $c = $_POST['gender'];
            $d = $_POST['username'];
            $e = $_POST['password'];
            $f = $_POST['email'];
            $g = $_POST['phone'];
            $i = $_POST['hireddate'];
            $j = $_POST['province'];
            $k = $_POST['city'];
		
	 			$query = 'UPDATE users u 
	 						join employee e on e.EMPLOYEE_ID=u.EMPLOYEE_ID
	 						join location l on l.LOCATION_ID=e.LOCATION_ID
	 						set e.FIRST_NAME="'.$a.'", e.LAST_NAME="'.$b.'", GENDER="'.$c.'", USERNAME="'.$d.'", PASSWORD = sha1("'.$e.'"),  EMAIL="'.$f.'", l.PROVINCE ="'.$j.'", l.CITY ="'.$k.'", PHONE_NUMBER ="'.$g.'",  ="'.$i.'" WHERE
					ID ="'.$zz.'"';
					$result = mysqli_query($db, $query) or die(mysqli_error($db));							
?>
				<script type="text/javascript">
	                alert("You've updated your account successfully.");
	                window.location = "user.php";
            	</script>