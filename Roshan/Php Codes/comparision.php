<?php
	include_once 'header.php';

?>

<?php
    $ip = "localhost";
    $username = "root";
    $password = "unt@2017*";
    $database = "Software_results";
    //$port = "3306";
    //Connecting to database
    $connection = mysqli_connect($ip, $username, $password, $database);
    //If connection was not successful, handle the error
    if (!$connection) {
        die("connection failed: ".mysqli_connect_error());
    } else {  
    $selectOption = mysqli_real_escape_string($connection,$_POST['company_name']); //pass stock name
    $sql = "SELECT * FROM $selectOption ORDER BY ID DESC LIMIT 1";
    $result = mysqli_query($connection,$sql);
    $row = mysqli_fetch_array($result);

    }


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
    $sql = "SELECT * FROM $selectOption ORDER BY ID DESC LIMIT 1";
    $result = mysqli_query($connection,$sql);
    $row1 = mysqli_fetch_array($result);
}
?>


<div class="container" style="background-color:white;padding-bottom:600px">
<div class="col-sm-10" style="margin-left:80px;margin-right:80px">
<table class="table table-striped">
<thead >
     <tr align="left" bgcolor="gray">
        <th><font color="white" scope="col">Company</font></th>
		<th><font color="white" scope="col">Software Predicted High</font></th>
        <th><font color="white" scope="col">Software Predicted Low</font></th>
        <th><font color="white" scope="col">Hardware Predicted High</font></th>
        <th><font color="white" scope="col">Hardware Predicted Low</font></th>
		<th><font color="white" scope="col">Hardware Execution Time</font></th>
		<th><font color="white" scope="col">Software Execution Time</font></th>
		<th><font color="white" scope="col">Result</font></th>
       
     </tr>

</thead>
<tbody>
<?php
		$name = $selectOption;
		$sphigh = $row['predicted_high'];
		$splow = $row['predicted_low'];
		$hphigh = $row1['predicted_high'];
		$hplow = $row1['predicted_low'];
		$hexec = $row1['execution_time'];
		$sexec = $row['execution_time'];
		$diff = $hexec-$sexec;

		
		if($diff >= 0)
		{
			 ?> <tr bgcolor="#D3D3D3">
        <td style='width: 200px;'><?php echo $name; ?></td>
		<td style='width: 200px;'><?php echo $sphigh; ?></td>
		<td style='width: 200px;'><?php echo $splow; ?></td>
		<td style='width: 200px;'><?php echo $hphigh; ?></td>
		<td style='width: 200px;'><?php echo $hplow; ?></td>
		<td style='width: 200px;'><?php echo $hexec; ?></td>
		<td style='width: 200px;'><?php echo $sexec; ?></td>
        <td style='width: 200px;padding-bottom:10px;padding-top:10px'><?php echo "Stock predicted by Hardware is faster than Software by $diff clock cycles."; ?></td>

      </tr>
	  
			
			<?php
		}
		else
		{
			?> <tr bgcolor="#D3D3D3">
        <td style='width: 200px;'><?php echo $name; ?></td>
		<td style='width: 200px;'><?php echo $sphigh; ?></td>
		<td style='width: 200px;'><?php echo $splow; ?></td>
		<td style='width: 200px;'><?php echo $hphigh; ?></td>
		<td style='width: 200px;'><?php echo $hplow; ?></td>
		<td style='width: 200px;'><?php echo $hexec; ?></td>
		<td style='width: 200px;'><?php echo $sexec; ?></td>
        <td style='width: 200px;padding-bottom:10px;padding-top:10px'><?php echo "Stock predicted by Software is faster than Hardware by $diff clock cycles."; ?></td>
      </tr>
			
			<?php
		}
		 
	
	
?>
</tbody>
</table>
</div>
</div>


<?php
  include_once 'footer.php';

?>



