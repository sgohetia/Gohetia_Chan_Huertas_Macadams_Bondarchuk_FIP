<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    require_once ('includes/connect.php');

$errors = array();

//validate and clean these values

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$company = $_POST['company'];
$email = $_POST['email'];
$message = $_POST['message'];
$type = $_POST['type'];


$first_name = trim($first_name);
$last_name = trim($last_name);
$company = trim($company);
$email = trim($email);
$message = trim($message);
$type = trim($type);


    if ($first_name == NULL) {
        $errors[] = "Name field is empty.";
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

    //insert these values as a new row in the contacts table

    $query = "INSERT INTO contact_general_sponsor (first_name,last_name,company, email, message,type) VALUES (:first_name, :last_name,:company, :email, :message, :type)";
    $stmt = $connect->prepare($query);
    $stmt->bindParam(':first_name', $first_name);
    $stmt->bindParam(':last_name', $last_name);
    $stmt->bindParam(':company', $company);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':message', $message);
    $stmt->bindParam(':type', $type);
    $stmt->execute();

//format and send these values in an email

$to = 'xxx@abc.com';// client email
$subject = 'Message from your Website!';

$message = "You have received a new general and sponsor form submission:\n\n";
$message .= "Name: ".$name."\n";
$message .= "Email: ".$email."\n\n";
$message .=  $comments;
//build out rest of message body...

mail($to,$subject,$message);

$ack_subject = 'Contact form acknowlegment';
$ack_message = "Thank you for submitting your contact form.\n\n";// replace with the inline css html email content

mail($email,$ack_subject,$ack_message);

//header('Location: index.php');
echo json_encode(array("message" => "Form submitted. Thank you for your interest!"));


    }



?>
