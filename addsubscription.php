<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
// require_once ('includes/connect.php');

$errors = array();

// Validate and clean input values

$email = $_POST['semail'];


// Validate and clean these values

$email = trim($email);


// Validation checks

if ($email == NULL) {
    $errors[] = "Email field is empty.";
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors[] = "\"" . $email . "\" is not a valid email address.";
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
// $query = "INSERT INTO contact_volunteers (first_name, last_name, email, gender, age, experience, message) 
//           VALUES (:first_name, :last_name, :email, :gender, :age, :experience, :message)";

// $stmt = $connect->prepare($query);
// $stmt->bindParam(':first_name', $first_name);
// $stmt->bindParam(':last_name', $last_name);
// $stmt->bindParam(':email', $email);
// $stmt->bindParam(':gender', $gender);
// $stmt->bindParam(':age', $age, PDO::PARAM_INT);
// $stmt->bindParam(':experience', $experience);
// $stmt->bindParam(':message', $message);
// $stmt->execute();

// Format and send an email
// $to = $email; // Replace with recipient email
// $subject = 'New Volunteer Application';
// $email_message = "You have received a new volunteer application:\n\n";
// $email_message .= "Name: $first_name $last_name\n";
// $email_message .= "Email: $email\n";
// $email_message .= "Gender: $gender\n";
// $email_message .= "Age: $age\n";
// $email_message .= "Skills/Experience: $experience\n\n";
// $email_message .= "Message:\n$message";

// mail($to, $subject, $email_message);


$ack_subject = 'Subscrption email';
$ack_message = "Thank you for subscribing to our newsletter.\n\n";

mail($email, $ack_subject, $ack_message); 


echo json_encode(array("message" => "Subscription submitted successfully!"));
}
?>