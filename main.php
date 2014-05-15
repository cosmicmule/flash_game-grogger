<?php

	ob_start();

	include('com/scripts/php/connectmdasilvasite.php');
	
	//$setter = $_GET['action'];
	$getter = $_GET['action'];

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
		
		
		function get_getter()
		{
		
			$output = "<?xml version=\"1.0\" ?>\n"; 
			$output .= "<schema><id>";
			
			$sql = mysql_query("select name,points from scoreboard ORDER BY points DESC LIMIT 7");
			
			while($row = mysql_fetch_array($sql))
			{
				$getname = "<user><name>".$row['name']."</name>";
				$getscore = "<points>".$row['points']."</points></user>";
				
				$output .= $getname;
				$output .= $getscore;		
			}

			$output .= "</id></schema>"; 

			//tells the browser what kind of file it is
			header("Content-type: text/xml"); 
			
			//echo out XML that describes the schema
			echo $output; 
		
		}
	
		get_getter();
	}

?>