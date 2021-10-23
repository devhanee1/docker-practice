<?php
    $conn = mysqli_connect(
    	'3.144.213.189',
		'test',
		'password',
		'test',
		'9876'
    );
	if (mysqli_connect_errno()) {
		echo "Failed to connect to Mysql".mysqli_connect_error();
	}

	$sql = "select version()";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_array($result);

	print_r($row["version()"]);
?>
