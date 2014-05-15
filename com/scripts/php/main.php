<?php

	ob_start();

	include('../connect/connect.php');
	
	echo "test fired";
	
	//$setter = $_GET['action'];
	$getter = $_GET['action'];
	
	echo $getter;
	
	//Setter
	if($setter)
	{
	
		function set_setter()
		{
			$setname = $_GET[''];
			$setscore = $_GET[''];
		
			mysql_query("insert into scoreboard(name,points) value($setname, $setscore)");
		
		}
	
	
	}

	//Getter
	if($getter)
	{
		get_getter();
		function get_getter()
		{
		
			$output = "<?xml version=\"1.0\" ?>\n"; 
			$output .= "<schema>";
			
			$sql = mysql_query("select name,point from scoreboard ");
			while($row = mysql_fetch_array($sql))
			{
				$getname = "<name>".$row['name']."</name>";
				$getscore = "<points>".$row['point']."</points>";
				
				$output .= $getname;
				$output .= $getscore;		
			}

			$output .= "</schema>"; 

			//tells the browser what kind of file it is
			header("Content-type: text/xml"); 
			
			//echo out XML that describes the schema
			echo $output; 
		
		}
	
	
	}

?>