<?php
	include_once 'header.php';
?>

<?php
  $option = isset($_POST['company_name']) ? $_POST['company_name'] : false;
   if ($option) {
    include("includes/dbh.inc.php");
    $query = "SELECT * FROM hvalue WHERE name LIKE '%".mysqli_real_escape_string($conn, $_POST['company_name'])."%' and Moment < CURRENT_DATE()";
    $member = mysqli_query($conn, $query);
    if (!$member) {
    die($query);
    }
  
    ?>
    <table border="0" cellpadding="0" cellspacing="0" border="0" align="center" style="margin-left:-10px">
      <tr align="left" bgcolor="gray">
        <th><font color="white">ID</font></th>
        <th><font color="white">Company</font></th>
        <th><font color="white">Date</font></th>
        <th><font color ="white">Predicted High</font></th>
        <th><font color="white">Predicted Low</font></th>
      </tr>
    <?php while($row = mysqli_fetch_array($member)) { ?>
      <tr bgcolor="#D3D3D3">
        <td style='width: 255px;'><?php echo $row['ID']; ?></td>
            <td style='width: 251px;'><?php echo $row['Name']; ?></td>
                <td style='width: 251px;'><?php echo $row['Moment']; ?></td>
        <td style='width: 251px;'><?php echo $row['PHigh']; ?></td>
        <td style='width: 255px;'><?php echo $row['Plow']; ?></td>


      </tr>
<?php }} ?>    


<?php
  include_once 'footer.php';

?>