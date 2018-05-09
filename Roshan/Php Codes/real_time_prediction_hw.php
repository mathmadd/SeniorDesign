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
    $connection = new mysqli($ip, $username, $password, $database);
    //If connection was not successful, handle the error
    if ($connection->connect_errno) {
        echo "Failed to connect to MySQL: ( " . $connection->connect_errno . ")" . $mysqli->connect_error;
    } else {
        //echo "Connected Successfully! <br>";
    }
    $selectOption = $_GET['company_name']; //pass stock name

    $sql = "SELECT date, high_prediction, low_prediction, high_actual, low_actual, execution_time FROM $selectOption";
    $result = $connection->query($sql);
?>

                <div class='col-sm-12'>
                <?php echo "<h2> $selectOption </h2>"; ?>
                <table class="table table-striped table-bordered table-inverse table-hover table-sm">
                    <thread class="thread-inverse">
                        <tr class="table-active">
                                <th><h3>Date</3></th>
                                <th><h3>Predicted High Price</3></th>
                                <th><h3>Predicted Low Price</h3></th>
                                <th><h3>High Actual</h3></th>
                                <th><h3>Low Actual</h3></th>
                                <th><h3>Execution Time</h3></th>

                        </tr>
                    </thread>
                    <tbody>
                <?php while ($row = $result->fetch_array()) {?>
                    <tr>
                            <td><h5> <?php echo "{$row['date']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['high_prediction']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['low_prediction']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['high_actual']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['low_actual']}"; ?> </h5></td>
                            <td><h5> <?php echo "{$row['execution_time']}"; ?> </h5></td>
                    </tr>
                <?php }?>
                </table>
                </div>




<?php
    mysqli_close($result);
    $connection->close();
?>

