<!DOCTYPE html>
<html lang="en">

<?php

session_start();

if (!isset($_SESSION['username'])) {
    header('Location: login_form.php');
    exit();
}

require_once('../includes/connect.php');
$stmt = $connect->prepare('SELECT id, name FROM donors ORDER BY name ASC');
$stmt->execute();
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

<section class="grid-con cms-menu">
    <div class="col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12">
<a class="cntct-btn" href="cms_main_page.php">Home</a>
<a class="cntct-btn" href="donor_list.php">Donors</a>
<a class="cntct-btn" href="event_list.php">Event</a>
<a class="cntct-btn"href="memorial_list.php">Memorial</a>
<a class="cntct-btn" href="news_blog_list.php">News and Blog</a>
</div>
</section>

<section id="project-list-con" class="grid-con">
      <div
        id="project-list"
        class="col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12"
      >
<?php

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

  echo  '<p class="admin-form-list">'.
  $row['name'].
  ' <a class="test" href="edit_donor_form.php?id='.$row['id'].'">edit</a>'.

  '<a class="test" href="delete_donor.php?id='.$row['id'].'">delete</a></p>';
}

$stmt = null;

?>
</div>
</section>
<br>
<section class="grid-con new-form-con">
  <div
    class=" new-form col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12"
  >
<h3>Add a New Donor</h3>
<form  action="add_donor.php" method="post" enctype="multipart/form-data">
    <label for="name">Name: </label>
    <input name="name" type="text" required><br><br>
    <label for="campaign">Campaign:</label>
    <input name="campaign" type="text" required><br><br>
    <label for="amount">Amount:</label>
    <input name="amount" type="text" required><br><br>

    <input class="cntct-btn" id="submit" name="submit" type="submit" value="Add">
</form>
</div>
</section>
<br><br><br>
<section id="logout-con" class="grid-con">
  <div
    id="logout"
    class="col-span-full m-col-start-10 m-col-end-13 l-col-start-10 l-col-end-12 "
  >
<a class="cntct-btn" id="logout" href="login_form.php">log out</a>
</div>
</section>
</body>
</html>
