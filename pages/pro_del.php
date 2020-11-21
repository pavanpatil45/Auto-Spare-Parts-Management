<?php
include'../includes/connection.php';

	if (!isset($_GET['do']) || $_GET['do'] != 1) {
						
    	switch ($_GET['type']) {
    		case 'product':
    			$query = 'DELETE FROM product WHERE PRODUCT_ID = ' . $_GET['id'];
    			$result = mysqli_query($db, $query) or die(mysqli_error($db));				
            ?>
    			<script type="text/javascript">alert("Product Successfully Deleted.");window.location = "product.php";</script>					
            <?php
    			//break;
            }
	}
?>