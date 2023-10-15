@$question = htmlspecialchars($_POST["question"]);
@$answer0 = htmlspecialchars($_POST["answer"]);

// create connection to databse
$conn = mysqli_connect(servername, username, password, dbname);

// check connection
if ($conn->connect_error)
    die("Connection failed: " . $conn->connect_error);

// prepare statement and bind
$stmt = $conn->prepare("INSERT INTO questions (question, answer) VALUES (?, ?)");
$stmt->bind_param("ssi", $question, $answer);

// execute
$stmt->execute();

echo "New record created successfully";

$stmt->close();
$conn->close();

