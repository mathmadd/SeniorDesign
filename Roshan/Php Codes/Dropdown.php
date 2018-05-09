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
<form method="POST" action="generate.php">
<p><b>Select Company Name <br>
<select name="company_name">
<option value="Alphabet">Alphabet</option>
<option value="Facebook">Facebook</option>
<option value="Tesla">Tesla</option>
<option value="Twitter">Twitter</option>
<option value="Netflix">Netflix</option>
<option value="Amazon">Amazon</option>
<option value="Walmart">Walmart</option>
<option value="Apple">Apple</option>
<option value="AT&T INC.">AT&T INC.</option>
<option value="VIX">VIX</option>


</select></b></p></br><center>
<input type="submit" name="btnSubmit" ;" value="Submit" /></center></form>


