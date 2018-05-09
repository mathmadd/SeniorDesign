<?php
  include_once 'header.php';
?>
<?php
    $ip = "localhost";
    $username = "root";
    $password = "unt@2017*";
    $database = "Hardware_results";
    //$port = "3306";
    //Connecting to database
    $connection = mysqli_connect($ip, $username, $password, $database);
    //If connection was not successful, handle the error
    if (!$connection) {
        die("connection failed: ".mysqli_connect_error());
    } else {

    
    $selectOption = mysqli_real_escape_string($connection,$_POST['company_name']); //pass stock name

    $sql = "SELECT * FROM $selectOption";
    $result = mysqli_query($connection,$sql);
?>

                <div class="container" style="padding-bottom: 580px;width:100%">
                 <h2 style="text-align:center"> <?php echo $selectOption; ?> </h2>
                <table class="table table-bordered" >
                    <thread >
                        <tr >
                                <th><h3>Date</3></th>
                                <th><h3>Predicted High Price</3></th>
                                <th><h3>Predicted Low Price</h3></th>
                                <th><h3>High Actual</h3></th>
                                <th><h3>Low Actual</h3></th>
                                <th><h3>Execution Time</h3></th>

                        </tr>
                    </thread>
                    <tbody>
                <?php while ($row = mysqli_fetch_array($result)) {?>
                    <tr>
                            <td><h5> <?php echo $row['Date']; ?> </h5></td>
                            <td><h5> <?php echo $row['predicted_high']; ?> </h5></td>
                            <td><h5> <?php echo $row['predicted_low']; ?> </h5></td>
                            <td><h5> <?php echo $row['high_actual']; ?> </h5></td>
                            <td><h5> <?php echo $row['low_actual']; ?> </h5></td>
                            <td><h5> <?php echo $row['execution_time']; ?> </h5></td>
                    </tr>
                <?php }?>
                </table>
                </div>




<?php
    mysqli_close($result);
    $connection->close();
}
?>




<!-- 
<?php
  // include("includes\access_hardware_results.php");

  // $selectOption = $_GET['company_name'];
  // //$query = "SELECT * FROM hvalue";
  // $query = "SELECT date, high_prediction, low_prediction, percent_error_low, percent_error_high, execution_time FROM $selectOption";
  // $member = mysqli_query($conn, $query);
  // if (!$member) {
  // die($query);
//}
 ?>  -->
<!-- <table border="0" cellpadding="0" cellspacing="0" border="0" align="center" style="margin-left:-10px">
  <tr align="left" bgcolor="gray">
    <th><font color="white">Date</font></th>
    <th><font color="white">High Prediction</font></th>
    <th><font color="white">Low Prediction</font></th>
    <th><font color ="white">High Actual</font></th>
    <th><font color="white">Percent Error Low</font></th>
    <th><font color="white">Execution Time</font></th>
  </tr>
<?php //while($row = mysqli_fetch_array($member)) { ?>
  <tr bgcolor="#D3D3D3">
    <td style='width: 210px;'><?php //echo $row['date']; ?></td>
    <td style='width: 210px;'><?php //echo $row['high_prediction']; ?></td>
    <td style='width: 210px;'><?php //echo $row['low_prediction']; ?></td>
    <td style='width: 210px;'><?php //echo $row['percent_error_low']; ?></td>
    <td style='width: 210px;'><?php //echo $row['percent_error_high']; ?></td>
    <td style='width: 210px;'><?php //echo $row['execution_time']; ?></td>


  </tr> -->
<!-- <?php //} ?>  -->




<?php
  include_once 'footer.php';

?>

