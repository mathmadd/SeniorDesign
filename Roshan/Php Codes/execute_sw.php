<?php

    // $server = "prism3-Optiplex-9010";
    // //ip address will work too i.e. 192.168.254.254 just make sure this is your public ip address not private as is the example
    // //specify your username
    // $username = "prism3";
    // //select port to use for SSH
    // $port = "22";
    // //command that will be run on server B
    // $command = "uptime";

    // //form full command with ssh and command, you will need to use links above for auto authentication help
    // //$cmd_string = "ssh -p ".$port." ".$username."@".$server." ".$command;
	 
    // $cmd_string="sudo ssh prism3@192.168.1.127 \"echo Some Text > /home/prism3/remotefile.txt \"2>&1";
     $cmd_string="./ssh_shell.sh";
    // //this will run the above command on server A (localhost of the php file)
     exec($cmd_string, $output);
     //var_dump($output);

    // //return the output to the browser
    // //This will output the uptime for server B on page on server A
    // echo '<pre>';
    // print_r($output);
    // echo '</pre>';
	// $connection = ssh2_connect('192.168.1.127', 22);
	// ssh2_auth_password($connection, 'prism3', 'unt@2017*');

	// $stream = ssh2_exec($connection, 'echo Some Text > /home/prism3/remotefile.txt');

// $ip = '192.168.1.127';
// $user = 'prism3';
// $pass = 'unt@2017*';

// $connection = ssh2_connect($ip);
// ssh2_auth_password($connection,$user,$pass);
// $shell = ssh2_shell($connection,"bash");

// //Trick is in the start and end echos which can be executed in both *nix and windows systems.
// //Do add 'cmd /C' to the start of $cmd if on a windows system.
// $cmd = "echo '[start]';your commands here;echo '[end]'";
// $output = user_exec($shell,$cmd);

// fclose($shell);

// function user_exec($shell,$cmd) {
//   fwrite($shell,$cmd . "\n");
//   $output = "";
//   $start = false;
//   $start_time = time();
//   $max_time = 2; //time in seconds
//   while(((time()-$start_time) < $max_time)) {
//     $line = fgets($shell);
//     if(!strstr($line,$cmd)) {
//       if(preg_match('/\[start\]/',$line)) {
//         $start = true;
//       }elseif(preg_match('/\[end\]/',$line)) {
//         return $output;
//       }elseif($start){
//         $output[] = $line;
//       }
//     }
//   }
// }

?>