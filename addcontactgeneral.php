<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
require_once ('includes/connect.php');

$errors = array();

// Validate and clean these values
$fname = isset($_POST['fname']) ? trim($_POST['fname']) : null;
$lname = isset($_POST['lname']) ? trim($_POST['lname']) : null;
$company = isset($_POST['company']) ? trim($_POST['company']) : null;
$email = isset($_POST['email']) ? trim($_POST['email']) : null;
$type = isset($_POST['type']) ? trim($_POST['type']) : null;
$message = isset($_POST['message']) ? trim($_POST['message']) : null;

// Validation checks
if (empty($fname)) {
    $errors[] = "First name field is empty.";
}
if (empty($lname)) {
    $errors[] = "Last name field is empty.";
}
if (empty($company)) {
    $errors[] = "Company field is empty.";
}
if (empty($email)) {
    $errors[] = "Email field is empty.";
} elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors[] = "\"$email\" is not a valid email address.";
}
if (empty($message)) {
    $errors[] = "Message field is empty.";
}

if (!empty($errors)) {
    echo json_encode(["errors" => $errors]);
    exit;
}

// Insert values into the database
$query = "INSERT INTO contact_general_sponsor (first_name, last_name, company, email, message, type) 
          VALUES (:fname, :lname, :company, :email, :message, :type)";
$stmt = $connect->prepare($query);
$stmt->bindParam(':fname', $fname);
$stmt->bindParam(':lname', $lname);
$stmt->bindParam(':company', $company);
$stmt->bindParam(':email', $email);
$stmt->bindParam(':message', $message);
$stmt->bindParam(':type', $type);
$stmt->execute();

// Format and send an email
$to = 'xxx@abc.com'; // Client email
$subject = 'Message from your Website!';
$email_message = "You have received a new general and sponsor form submission:\n\n";
$email_message .= "Name: $fname $lname\n";
$email_message .= "Email: $email\n";
$email_message .= "Company: $company\n";
$email_message .= "Type: $type\n\n";
$email_message .= "Message:\n$message";

mail($to, $subject, $email_message);

$ack_subject = 'Contact Form Acknowledgment';
$ack_message = "Thank you for submitting your contact form. We will get back to you shortly.";

mail($email, $ack_subject, $ack_message);

// Return success response
echo json_encode(["message" => "Form submitted. Thank you for your interest!"]);
?>