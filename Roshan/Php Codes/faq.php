<?php
  include_once 'header.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
}

.active, .accordion:hover {
    background-color: #ccc;
}

.panel {
    padding: 0 18px;
    background-color: white;
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.2s ease-out;
}
</style>
</head>
<body>

<h2><center>Frequently Asked Questions</center></h2>
<p>Click on the buttons to open the collapsible content.</p>

<button class="accordion">How can I login into the website?</button>
<div class="panel">
  <p>Make a user account from signup page. </p>
</div>


<button class="accordion">Is the website free?</button>
<div class="panel">
  <p>The website is not 100% free. </p>
</div>

<button class="accordion">Is the website user friendly?</button>
<div class="panel">
  <p>Yes it is. </p>
</div>

<button class="accordion">How many languages can I choose?</button>
<div class="panel">
  <p>In this website you can only choose one language i.e. English. </p>
</div>

<button class="accordion">What is the error percentage?</button>
<div class="panel">
  <p>The system cannot be 100 percent accurate on predicting the outputs. The error will be minimized to +/- 5%. </p>
</div>

<button class="accordion">Is this website reliable?</button>
<div class="panel">
  <p>The system is almost reliable. </p>
</div>

<button class="accordion">Is it real life applicable? </button>
<div class="panel">
  <p>Unfortunately the stock market is highly unpredictable with the global influences and uncertain political situations as well as nature’s influences. An example is Bitcoin’s overnight surge dealt with other outside factors that our algorithm does not take into account. Therefore this model is not recommended for real time use of the stock market. 
</p>
</div>

<button class="accordion">If I ran into any system problem whom should I contact for help? </button>
<div class="panel">
  <p>The developer of the system are the best resource for fixing any system      problem. The team members involved in the project will help with any system maintenance. </p>
</div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>

</body>
</html>

<div style="margin-top:200px"></div>
<?php
  include_once 'footer.php';
?>