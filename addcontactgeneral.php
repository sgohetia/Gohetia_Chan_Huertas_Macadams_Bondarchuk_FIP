<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
// require_once ('includes/connect.php');


$errors = array();

// Validate and clean these values
$first_name = isset($_POST['first_name']) ? trim($_POST['first_name']) : '';
$last_name  = isset($_POST['last_name']) ? trim($_POST['last_name']) : '';
$company    = isset($_POST['company']) ? trim($_POST['company']) : '';
$email      = isset($_POST['email']) ? trim($_POST['email']) : '';
$type       = isset($_POST['type']) ? trim($_POST['type']) : '';
$message    = isset($_POST['message']) ? trim($_POST['message']) : '';

// Validation checks
if ($first_name == NULL) {
    $errors[] = "First name field is empty.";
}
if ($last_name == NULL) {
    $errors[] = "Last name field is empty.";
}
if ($company == NULL) {
    $errors[] = "Company field is empty.";
}
if ($email == NULL) {
    $errors[] = "Email field is empty.";
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors[] = "\"" . $email . "\" is not a valid email address.";
}

if ($type == NULL) {
    $errors[] = "Type field is empty.";
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
// $query = "INSERT INTO contact_general_sponsors (first_name, last_name, company, email, type, message) VALUES (:first_name, :last_name, :company, :email, :type, :message )";
// $stmt = $connect->prepare($query);
// $stmt->bindParam(':first_name', $first_name);
// $stmt->bindParam(':last_name', $last_name);
// $stmt->bindParam(':company', $company);
// $stmt->bindParam(':email', $email);
// $stmt->bindParam(':type', $type);
// $stmt->bindParam(':message', $message);
// $stmt->execute();

// Format and send an email
$to = $email; // Client email
$subject = 'Message from your Website!';
$email_message = "You have received a new general and sponsor form submission:\n\n";
$email_message .= "Name: $first_name $last_name\n";
$email_message .= "Email: $email\n";
$email_message .= "Company: $company\n";
$email_message .= "Type: $type\n\n";
$email_message .= "Message:\n$message";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= "From: Brothers In Arms <noreply@brothersinarms.com>" . "\r\n";

mail($to, $subject, $email_message, $headers);

$ack_subject = 'Contact Form Acknowledgment';
$ack_message = "Thank you for submitting your contact form. We will get back to you shortly.";
$ack_headers = "MIME-Version: 1.0" . "\r\n";
$ack_headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$ack_headers .= "From: Brothers In Arms <noreply@brothersinarms.com>" . "\r\n";

mail($email, $ack_subject, $ack_message, $ack_headers);

// Return success response
echo json_encode(array("message" => "Form submitted. Thank you for your interest!"));
}
?>