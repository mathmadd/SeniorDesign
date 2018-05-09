<?php
	include_once 'header.php';
?>

<!DOCTYPE html>
<html>
<head>
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
h2 {
    text-align: center;
}
p {
	
	text-align: center;
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}


body {
    background-image: url("bs.jpg");

    background-repeat: no-repeat;
    background-size: 100% 370%
}


</style>
</head>
<body>


<h2>Choose the name of the company to see the past stock prices.</h2>
<p><b>Move mouse over the stock button to open the dropdown menu.</b></p>
<form method="get" action="historical_value.php">
<p><b>Select Company Name <br>
<select name="company_name">
<option value="FB">Facebook</option>
<option value="RF">Regions Financial Corporation</option>
<option value="TWTR">Twitter</option>
<option value="NFLX">Netflix</option>
<option value="VZ">Verizon</option>
<option value="SIRI">SiRi</option>
<option value="WFC">Wells Fargo</option>
<option value="EBAY">EBAY</option>
<option value="AAPL">Apple</option>
<option value="MU">Micron Technology, Inc.</option>
</select></b></p></br><center>
<input type="submit" name="btnSubmit" ;" value="Submit" /></center></form>


