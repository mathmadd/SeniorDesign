<html>
<head><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"</head>
</html>

<?php
	include_once 'header.php';

?>




		<?php
			if (isset($_SESSION['u_id']))
			 {
			 	$user_uid = $_SESSION['u_id'];
			 	include 'includes/dbh.inc.php';
			 	$sql = "SELECT * FROM users WHERE user_uid='$user_uid'";
			 	$result = mysqli_query($conn, $sql);
			 	$row = mysqli_fetch_assoc($result);
			 	$user_name =  $row['user_first'];

            	
				echo '
								<section class="main-container" style = "background-color: white">
								<h1 style="text-align:center;font-size:48px;font-weight:bold">WELCOME '.$user_name.'</h1>
								<div class="container-fluid text-center" >    
									<p align="justify" style="text-align: left; font-family: verdana;font-size:20px">The implementation of the system relies on the development of a custom algorithm that utilizes market indicators to predict the high and
									low of the chosen stock and notify the user when to buy or sell. This algorithm will then be translated  into C++ software code and VHDL on 
									a separate server and Xilinx Artix-7 FPGA respectively in order to compare the performance on the different systems. The data used by the
									system will be housed in one server so that it can be read by the software (C++) server and hardware (FPGA) server. Each server will then 
									perform the calculations and display the results back to the updated database. The underlying technical components will be wrapped in easy
									to use GUI created using HTML/CSS  which will  allow a user to select a stock from a list and simply display the highs, lows, and buy/sell 
									notifications.


							Installation and subsequent deployment of the system will require the use of three Optiplex 9010 servers(two running Ubuntu 16.04.3, one running
							Windows Enterprise 7) networked together with a stable Internet connection using a 2.4GHz wireless broadband router. The historical data database
							 on one server running LAMPP will be read and new data generated on the two remaining servers (one for software code, one for FPGA) and returned to
							 the database server and displayed as specified above.</p>

									<h1 style="text-align: left; font-family: verdana;
							     font-size: 20px; text-indent: 250px; ">Click the box to see the desired result as labeled on the boxes.</h1>
								</div>

							  <div class="container">
									<div class="row">
										<div class="col-sm-6">
											<div class="well" >
												<h1 ><a href="hw_dropdown.php" > Hardware Result </a></h1>
											</div>
										</div>
										
										<div class="col-sm-6">
											<div class="well">
												 <h1 ><a href="sw_dropdown.php" > Software Result </a></h1>
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-sm-6">
											<div class="well">
												<h1 ><a href="historical_dropdown.php" > Historical Data </a></h1>
											</div>
										</div>
										
										<div class="col-sm-6">
											<div class="well">
												<h1 ><a href="comparison_dropdown.php" > Comparison </a></h1>
											</div>
										</div>

								<!--	<div class="row">
										<div class="col-sm-6">
											<div class="well">
												<h1 ><a href="real_time_sw.php" > Real Time Prediction Software</a></h1>
											</div>
										</div> -->
									
									<!--	<div class="col-sm-6">
											<div class="well">
												<h1 ><a href="real_time_hw.php" > Real Time Prediction Hardware</a></h1>
											</div>
										</div> -->
									</div>
							  </div>
							</div>

								<div class="container-fluid text-center" >    
									<h1><p align="justify" style="text-align: left; font-family: verdana;font-size:20px">The user will gain access to the system using a user generated username and password through the use of front-end web portal. 
									From there, the user will then be able to select a stock (up to 10) to obtain the predictive high and low of that particular stock. 
									The system will also give a readout of how fast the computation calculates the results for both the software and hardware components 
									of the system. Based on this data, the user can then make a personal determination on whether or not to buy or sell, but the system also 
									will output a signal if all indicators show a strong buy/ sell opportunity. Once satisfied, the user can then logout of the system to secure
									access/information. </p>
							</h1>
									<h1 style="text-align: left; font-family: verdana;
							     font-size: 20px; text-indent: 50px;"><p>This system projects a prediction of stock prices using historical data, but does not accurately 
								 predict real in time stock prices. For the security concerns of user with the login system no information is accessed or used by the team 
								 members. 
							 </p>
							</h1> 
								</div>
							</section>
							<br><br><br>';
}
		else
		{
			
			echo '
			<section class="main-container">
			<h1 style="text-align:center;font-size:48px;font-weight:bold">STOCK PREDICTOR</h1>
			<h2 style="text-align:center;font-family:Geogia;padding-bottom:20px;color:gray">HARDWARE VS. SOFTWARE
STOCK PRICE PREDICTOR</h2>';

			echo '<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="graph.jpg" alt="Statue" style="margin-left:30%">     
      </div>

      <div class="item">
        <img src="zbox.png" alt="Khukuri" style="margin-left:30%">      
      </div>
	  
	  <div class="item">
        <img src="c++.jpg" alt="Khukuri" style="margin-left:30%">     
      </div>
	  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<div class="container-fluid text-center" style="padding-top:60px">
<div class="row">
<div class = "col-sm-6">
<h1 style="text-align:center">How to analyze stock market?</h1>
<p align="justify" style="text-align: left; font-family: verdana;font-size:20px" >Stock market has always been unpredictable and many times traders buy and sell stocks without
using a proper prediction model to cut risk down. Buying and selling stocks with an appropriate
prediction model can be highly beneficial to any investor. To analyze the stock market’s nature and
create an effective predictive algorithm is the main purpose of this project. Indicators such as RSI,
Bollinger’s band, Stochastic Oscillator and MACD will aid the creation of our algorithm. Our
algorithm will be more effective and adaptable. With the VHDL and C programming languages we
will implement the algorithm on an FPGA and CSE machine. The algorithm on FPGA hardware will
create a handy prediction model. The result will be displayed on a separate screen comparing the
CSE machine and FPGA in an easy user experience.<br>
</p>
</div>

<div class = "col-sm-6">
<img src="crash.jpg" style="height:300px;width:500px;padding-top:20px">
</div>

</div>

<div class="row" style="padding-top:60px;padding-bottom:60px">

<div class = "col-sm-6">
<img src="role.png" style="height:300px;width:500px;padding-top:20px">
</div>

<div class = "col-sm-6">
<h1 style="text-align:center">Role of Stock Market</h1>
<p style="text-align: left; font-family: verdana;font-size:20px" align="justify">
Stock plays vital role in any company/country’s economy. 
 It provides capital for companies and reflects financial health of any country. 
 To be able to predict highs and lows of any company’s stock would help in profitable investment. 
 Use of neural network as part of algorithm for prediction comes from two different source i.e. software and hardware for comparing the most
 precise values. This is hoped to create opportunities for economic growth. 
 </br>
</p>
</div>


</div>

</div>
</section>
';
		}

		
			
			
		?>





<?php
	include_once 'footer.php';
?>