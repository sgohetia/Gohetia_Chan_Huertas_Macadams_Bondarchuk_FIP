<!DOCTYPE html>
<html lang="en">
<?php
require_once('../includes/connect.php');
$query = 'SELECT * FROM memorial WHERE memorial.id = :memorialId';
$stmt = $connect->prepare($query);
$memorialId = $_GET['id'];
$stmt->bindParam(':memorialId', $memorialId, PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Brothers in Arms</title>
    <link
      rel="shortcut icon"
      href="../images/brothers-in-arms-logo.png"
      type="image/x-icon"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.min.css"
    />
    <link
      href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />

    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/grid.css" />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"
    ></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/ScrollTrigger.min.js"
    ></script>
    <script
      defer
      src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollToPlugin.min.js"
    ></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"
    ></script>

    <script defer src="../js/main.js"></script>
  </head>
<body>

<section class=" edit-con grid-con">
    <div class="edit col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12">
    <h1>Edit Memorial</h1>
<p>Please edit the memorial.<br></p>
<form class="edit-form" action="edit_memorial.php" method="POST">
<input name="pk" type="hidden" value="<?php echo $row['id']; ?>">
    <label for="first_name">First Name: </label>
    <input name="first_name" type="text" value="<?php echo $row['first_name']; ?>" required><br><br>
    <label for="last_name">First Name: </label>
    <input name="last_name" type="text" value="<?php echo $row['last_name']; ?>" required><br><br>
    <label for="story">Story: </label>
    <textarea name="story" type="text" required ><?php echo $row['story'];?></textarea> <br><br>
    <label for="qrcode">QR code: </label>
    <input name="qrcode" type="text" value="<?php echo $row['last_name']; ?>" required><br><br>
    <label for="date_of_death">Date of Death: </label>
    <input name="date_of_death" type="date" required value="<?php echo $row['date_of_death']; ?>"><br><br>
    <label for="message">Message: </label>
    <textarea name="message" type="text" required ><?php echo $row['message'];?></textarea> <br><br>
    <input class="cntct-btn" name="submit" type="submit" value="Edit">
</form>
</div>
</section>
<?php
$stmt = null;
?>
</body>
</html>
