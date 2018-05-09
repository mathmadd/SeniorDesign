
<?php
	include_once 'header.php';

?>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-image: none;

    background-repeat: no-repeat;
    
}
body {
	color: white;
}
h1 {
    color: black;
	
	text-shadow: 3px 2px red;
	
}
p{

color: black;
	text-indent: 50px;
	
	 font-family: "Times New Roman", Times, serif;
	
}
</style>
</head>
<body>

<h1><center>System Overview</center></h1>
<p style="text-align: left; font-family: verdana;
							     font-size: 20px; text-indent: 50px;"><b>



The system starts with the FPGA and comparable processor reading files of prerecorded historical values of each stock. The system utilizes a MySQL 
database on a LAMPP server that contains the historical data of several stocks. These will contain daily closing values from the stock selected by
 user. Then each device will have the files for easy access. From the GUI, a user can select a stock and using the information in this database and 
 custom algorithm, make a prediction of the high and low and store this data in new database for record keeping purposes. Then both devices will run 
 a neural network algorithm using the RSI, Bollinger's band, Stochastic Oscillator and MACD stock indicators. As each device computes a predicted high
 and low this information will be sent to the display database and displayed on our third computer. The devices will also send to the display 
 computer the speed and performance from each device.

 <br><br>
The system has four main components. The stock data and the algorithm to predict the day highs and lows. The FPGA which will run a VHDL coded form 
of the algorithm run through Vivado and send its predicted value and the performance information. The computer for our comparable processor will also
 run a C++ coded version and send the performance information to the display computer. The display computer will ask the user for which stock she/he 
 wishes to watch, and will display on a website the predicted high and low as well as the FPGA's and the comparable processor's speed and performance 
 data.
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</b></p>



</body>
</html>
<?php
	include_once 'footer.php';
?>