<?php
include('../includes/connection.php');
			$zz = $_POST['id'];
			$name = $_POST['name'];
            $prov = $_POST['province'];
            $cit = $_POST['city'];
            $phone = $_POST['phone'];
		
	 			$query = 'UPDATE supplier e join location l on l.LOCATION_ID=e.LOCATION_ID set COMPANY_NAME="'.$name.'", l.PROVINCE ="'.$prov.'", l.CITY ="'.$cit.'", PHONE_NUMBER="'.$phone.'" WHERE
					SUPPLIER_ID ="'.$zz.'"'; 
					$result = mysqli_query($db, $query) or die(mysqli_error($db));

							
?>	
	<script type="text/javascript">
			alert("You've Update Supplier Successfully.");
			window.location = "supplier.php";
		</script>