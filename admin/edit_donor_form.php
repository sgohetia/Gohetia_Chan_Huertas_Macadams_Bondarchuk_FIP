<!DOCTYPE html>
<html lang="en">
<?php
require_once('../includes/connect.php');
$query = 'SELECT * FROM donors WHERE donors.id = :donorId';
$stmt = $connect->prepare($query);
$donorId = $_GET['id'];
$stmt->bindParam(':donorId', $donorId, PDO::PARAM_INT);
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
    <h1>Edit Donor</h1>
<p>Please edit the donor.<br></p>
<form class="edit-form" action="edit_donor.php" method="POST">
<input name="pk" type="hidden" value="<?php echo $row['id']; ?>">
    <label for="name">Name: </label>
    <input name="name" type="text" value="<?php echo $row['name']; ?>" required><br><br>
    <label for="campaign">Campaign: </label>
    <input name="campaign" type="text" required value="<?php echo $row['campaign']; ?>"><br><br>
    <label for="amount">Amount: </label>
    <input name="amount" type="text" required value="<?php echo $row['amount']; ?>"><br><br>
    <input class="cntct-btn" name="submit" type="submit" value="Edit">
</form>
</div>
</section>
<?php
$stmt = null;
?>
</body>
</html>
