<html>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "mrmsnh1419";
$dbname = "robots_control";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM arm_control ORDER BY last_updated DESC LIMIT 1";
$rs = mysqli_query($conn, $sql);

if (mysqli_num_rows($rs) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($rs)) {
        echo "<br> Base: ". $row["base"].  "
        <br> Shoulder: ". $row["shoulder"]. " 
        <br> Elbow: ". $row["elbow"]. " 
        <br> Wrist: ". $row["wrist"]. " 
        <br> Gripper: ". $row["gripper"]."<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>