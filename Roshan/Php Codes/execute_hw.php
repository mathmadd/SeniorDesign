<?php

$symbol_file = '//var/www/html/website/fpga_prism_mount/test.txt';
//shell_exec("mv test.txt fpga_prism_mount/")
//$status_file = '//var/www/html/website/prism2_3/status.txt';
// The new person to add to the file
//shell_exec("//var/www/html/website/fpga_prism_mount/symbol.sh");
$symbol = $_GET["company_name"];
//$status = '1';
// Write the contents to the file, 
// using the FILE_APPEND flag to append the content to the end of the file
// and the LOCK_EX flag to prevent anyone else writing to the file at the same time
//file_put_contents($file, $person, FILE_APPEND | LOCK_EX);
//file_put_contents($status_file, $symbol);
file_put_contents($symbol_file, $symbol);
// Outputs all the result of shellcommand "ls", and returns
// the last output line into $last_line. Stores the return value
// of the shell command in $retval.
//echo exec('whoami > /CSV_files_sw/test.txt');
//$cmd = shell_exec("mv //var/www/html/website/run_test.sh");

#for debugging
//echo $cmd;

?>