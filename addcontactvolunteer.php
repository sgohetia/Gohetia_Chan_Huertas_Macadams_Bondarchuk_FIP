<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    require_once ('includes/connect.php');

    $errors = array();

    // Validate and clean input values
    $first_name = isset($_POST['first_name']) ? trim($_POST['first_name']) : null;
    $last_name = isset($_POST['last_name']) ? trim($_POST['last_name']) : null;
    $email = isset($_POST['email']) ? trim($_POST['email']) : null;
    $message = isset($_POST['message']) ? trim($_POST['message']) : null;
    $volunteer_event_interest = isset($_POST['volunteer_event_interest']) ? trim($_POST['volunteer_event_interest']) : null;
    $availability = isset($_POST['availability']) ? trim($_POST['availability']) : null;
    $race = isset($_POST['race']) ? trim($_POST['race']) : 'Not to answer';
    $dietary_requirements = isset($_POST['dietary_requirements']) ? trim($_POST['dietary_requirements']) : 'blank';
    $gender = isset($_POST['gender']) ? trim($_POST['gender']) : 'Not to answer';
    $age = isset($_POST['age']) ? trim($_POST['age']) : null;
    $experience = isset($_POST['experience']) ? trim($_POST['experience']) : null;

    // Validation
    if (!$first_name) {
        $errors[] = "First name field is empty.";
    }
    if (!$last_name) {
        $errors[] = "Last name field is empty.";
    }
    if (!$email) {
        $errors[] = "Email field is empty.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "$email is not a valid email address.";
    }
    if (!$message) {
        $errors[] = "Message field is empty.";
    }
    if (!$volunteer_event_interest) {
        $errors[] = "Volunteer event interest field is empty.";
    }
    if (!$availability) {
        $errors[] = "Availability field is empty.";
    }
    if (!$age) {
        $errors[] = "Age field is empty.";
    }
    if (!$experience) {
        $errors[] = "Experience field is empty.";
    }

    if (count($errors) > 0) {
        echo json_encode(["errors" => $errors]);
        
    }

    // Insert into database
    $query = "INSERT INTO contact_volunteer (first_name, last_name, email, message, volunteer_event_interest, availability, race, dietary_requirements, gender, age, experience, date_time) VALUES (:first_name, :last_name, :email, :message, :volunteer_event_interest, :availability, :race, :dietary_requirements, :gender, :age, :experience, NOW())";
    $stmt = $connect->prepare($query);
    $stmt->bindParam(':first_name', $first_name);
    $stmt->bindParam(':last_name', $last_name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':message', $message);
    $stmt->bindParam(':volunteer_event_interest', $volunteer_event_interest);
    $stmt->bindParam(':availability', $availability);
    $stmt->bindParam(':race', $race);
    $stmt->bindParam(':dietary_requirements', $dietary_requirements);
    $stmt->bindParam(':gender', $gender);
    $stmt->bindParam(':age', $age);
    $stmt->bindParam(':experience', $experience);
    $stmt->execute();

    // Send email notification
    $to = 'xxx@abc.com';
    $subject = 'New Volunteer Inquiry from Website';
    $email_message = "You have received a new volunteer inquiry:\n\n";
    $email_message .= "Name: $first_name $last_name\n";
    $email_message .= "Email: $email\n\n";
    $email_message .= "Message: $message\n";
    mail($to, $subject, $email_message);

    // Acknowledgment email to user
    $ack_subject = 'Thank You for Your Inquiry';
    $ack_message = "Dear $first_name,\n\nThank you for reaching out about volunteering. We will get back to you soon.\n\nBest regards,\n[Your Organization]";
    mail($email, $ack_subject, $ack_message);

    echo json_encode(["message" => "Form submitted successfully. Thank you for your interest!"]);
?>
