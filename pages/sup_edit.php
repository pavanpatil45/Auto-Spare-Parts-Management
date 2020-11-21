<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
  $query = 'SELECT ID, t.TYPE
            FROM users u
            JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
  $result = mysqli_query($db, $query) or die (mysqli_error($db));
  
  while ($row = mysqli_fetch_assoc($result)) {
            $Aa = $row['TYPE'];
                   
  if ($Aa=='User'){
?>
  <script type="text/javascript">
    //then it will be redirected
    alert("Restricted Page! You will be redirected to POS");
    window.location = "pos.php";
  </script>
<?php
  }           
}
  $query = 'SELECT SUPPLIER_ID, COMPANY_NAME,  l.PROVINCE, l.CITY, PHONE_NUMBER FROM supplier e join location l on l.LOCATION_ID=e.LOCATION_ID WHERE SUPPLIER_ID ='.$_GET['id'];
  $result = mysqli_query($db, $query) or die(mysqli_error($db));
    while($row = mysqli_fetch_array($result))
    {   
      $zz = $row['SUPPLIER_ID'];
      $a = $row['COMPANY_NAME'];
      $b = $row['PROVINCE'];
      $c = $row['CITY'];
      $d = $row['PHONE_NUMBER'];
    }
      $id = $_GET['id'];
?>

  <center><div class="card shadow mb-4 col-xs-12 col-md-8 border-bottom-primary">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary">Edit Supplier</h4>
            </div>
            
            <div class="card-body">
      
            <form role="form" method="post" action="sup_edit1.php">
              <input type="hidden" name="id" value="<?php echo $zz; ?>" />
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Company Name:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Company Name" name="name" value="<?php echo $a; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Province:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Province" name="province" value="<?php echo $b; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 City:
                </div>
                <div class="col-sm-9">
                   <input class="form-control" placeholder="City/Municipality" name="city" value="<?php echo $c; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Phone Number:
                </div>
                <div class="col-sm-9">
                   <input class="form-control" placeholder="Phone Number" name="phone" value="<?php echo $d; ?>" required>
                </div>
              </div>
              <hr>

                <button type="submit" class="btn btn-warning btn-block"><i class="fa fa-edit fa-fw"></i>Update</button>    
              </form>  
            </div>
          </div></center>

<?php
include'../includes/footer.php';
?>