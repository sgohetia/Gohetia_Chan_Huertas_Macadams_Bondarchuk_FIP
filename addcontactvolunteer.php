<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
require_once ('includes/connect.php');

$errors = array();

// Validate and clean input values
$first_name = $_POST['vfname'];
$last_name = $_POST['vlname'];
$email = $_POST['vemail'];
$gender = $_POST['gender'];
$age = $_POST['vage'];
$experience = $_POST['vskills'];
$message = $_POST['vmessage'];

// Validate and clean these values
$first_name = trim($first_name);
$last_name = trim($last_name);
$email = trim($email);
$gender = trim($gender);
$age = trim($age);
$experience = trim($experience);
$message = trim($message);

// Validation checks
if ($first_name == NULL) {
    $errors[] = "First name field is empty.";
}
if ($last_name == NULL) {
    $errors[] = "Last name field is empty.";
}
if ($email == NULL) {
    $errors[] = "Email field is empty.";
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors[] = "\"" . $email . "\" is not a valid email address.";
}
if ($gender == NULL) {
    $errors[] = "Gender field is empty.";
}
if (!$age || !is_numeric($age) || $age < 10 || $age > 100) {
    $errors[] = "Age must be a number between 10 and 100.";
}
if ($experience == NULL) {
    $errors[] = "Skills/Experience field is empty.";
}
if ($message == NULL) {
    $errors[] = "Message field is empty.";
}

$errcount = count($errors);

if ($errcount > 0) {
    $errmsg = array();
    for ($i = 0; $i < $errcount; $i++) {
        $errmsg[] = $errors[$i];
    }
    echo json_encode(array("errors" => $errmsg));
}else{

// Insert values into the database
$query = "INSERT INTO contact_volunteers (first_name, last_name, email, gender, age, experience, message) 
          VALUES (:first_name, :last_name, :email, :gender, :age, :experience, :message)";

$stmt = $connect->prepare($query);
$stmt->bindParam(':first_name', $first_name);
$stmt->bindParam(':last_name', $last_name);
$stmt->bindParam(':email', $email);
$stmt->bindParam(':gender', $gender);
$stmt->bindParam(':age', $age, PDO::PARAM_INT);
$stmt->bindParam(':experience', $experience);
$stmt->bindParam(':message', $message);
$stmt->execute();

// Format and send an email
$to = 'xxx@abc.com'; // Replace with recipient email
$subject = 'New Volunteer Application';
$email_message = "You have received a new volunteer application:\n\n";
$email_message .= "Name: $first_name $last_name\n";
$email_message .= "Email: $email\n";
$email_message .= "Gender: $gender\n";
$email_message .= "Age: $age\n";
$email_message .= "Skills/Experience: $experience\n\n";
$email_message .= "Message:\n$message";

mail($to, $subject, $email_message);


$ack_subject = 'Volunteer Application Received';
$ack_message = "Thank you for applying as a volunteer. We appreciate your interest and will get back to you shortly.";

mail($email, $ack_subject, $ack_message); 


echo json_encode(array("message" => "Application submitted successfully!"));
}
?>