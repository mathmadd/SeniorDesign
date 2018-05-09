<?php
	include_once 'header.php';
?>


<?php
session_start();
// various stuff to determine if use is logged in...
?>
<html><!-- some amazing HTML stuff -->
<div id="nav">
<ul>

	<section class="main-container">
	<div class="main-wrapper">
		<h2>Home</h2>
<?php if (isset($_SESSION['u_id'])) { // or however you determine they're logged in ?>

<html>
<link href='style.css' rel='stylesheet'>
<ul>
	<li><a>Hardware Prediction</a></li>
	<ul>
		<li><a>Get Hardware Prediction</a></li>

	</ul>
	<li><a>Software Prediction</a></li>
	<ul>
		<li><a>Get Software Prediction</a></li>
	</ul>
	<li><a>Historical Data</a></li>
	<ul>
				<li><a>Google</a></li>
				<li><a>Amazon</a></li>
				<li><a>Ford</a></li>


	</ul>
	
	<li><a>user name</a></li>\
</ul>
</html>

<?php } else { ?>
<li> your non-logged-in items go here</li>
<?php } ?>
</ul>
</div>

<?php
	include_once 'footer.php';
?>
