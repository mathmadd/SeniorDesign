<?php
	include_once 'header.php';
?>
<?php
    $ip = "localhost";
    $username = "root";
    $password = "unt@2017*";
    $database = "historical_data";
    //$port = "3306";
    //Connecting to database
    $connection = new mysqli($ip, $username, $password, $database);
    //If connection was not successful, handle the error
    if ($connection->connect_errno) {
        echo "Failed to connect to MySQL: ( " . $connection->connect_errno . ")" . $mysqli->connect_error;
    } else {
        //echo "Connected Successfully! <br>";
    }
    $selectOption = $_GET['company_name']; //pass stock name

    $sql = "SELECT date, open, high, low, close FROM $selectOption";
    $result = $connection->query($sql);
?>

                <div class='container'>
                <?php echo "<h2> $selectOption </h2>"; ?>
                <table class="table table-bordered">
                    <thread >
                        <tr>
                                <th><h3>Date</3></th>
                                <th><h3>Open</3></th>
                                <th><h3>High</h3></th>
                                <th><h3>Low</h3></th>
                                <th><h3>Close</h3></th>
                        

                        </tr>
                    </thread>
                    <tbody>
                <?php while ($row = $result->fetch_array()) {?>
                    <tr>
                            <td><h5> <?php echo "{$row['date']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['open']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['high']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['low']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['close']}"; ?> </h5></td>
                            
                    </tr>
                <?php }?>
                </table>
                </div>




<?php
    mysqli_close($result);
    $connection->close();
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

