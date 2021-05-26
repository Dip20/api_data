<?php
	// Account details
	$apiKey = urlencode('059456a632a460c944efdb2946b78afd');
	$apisecret = urlencode('233bf88f8e3c85fd1f99db462293b2e4');
 
	//query
	$query = "jobs";

	// Prepare data for POST request
	$data = 'apikey=' . $apiKey . '&apisecret=' . $apisecret. '&query=' . $query;
 
	// Send the GET request with cURL
	$ch = curl_init('http://santusarkar.host/api/?' . $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$response = curl_exec($ch);
	curl_close($ch);
 
	// Process your response here
	//echo $response;

	echo "<pre>";
	$res = json_decode($response, true);
	//print_r($res);

	
	//if your query is jobs then ....
	/*foreach($res['Data'] as $value)
        {
	echo "<pre>";
  	 echo "coursetitle: " . $value['coursetitle'];
	echo "<br>";
  	 echo "coursetag: " . $value['coursetag'];
	}*/


	//if your query is courses....
	foreach($res['Data'] as $value)
        {
	echo "<pre>";
  	 echo "jobtitle: " . $value['jobtitle'];
	echo "<br>";
  	 echo "jobintro: " . $value['jobintro'];
	}


?>