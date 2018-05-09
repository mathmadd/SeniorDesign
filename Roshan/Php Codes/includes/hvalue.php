<?php
include("includes\dbh.inc.php");
$query = " * from `hvalue`";
$member = mysqli_query($query);
if (!$member) {
die($query);
}
?>
<table cellpadding="0" cellspacing="0" border="0">
  <tr>
    <th>Username</th>
  </tr>
<?php while($row = mysql_fetch_array($member)) { ?>
  <tr>
    <td style='width: 200px;'><?php echo $row['Name']; ?></td>
  </tr>
<?php } ?>    