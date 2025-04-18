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

    <script defer src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script defer type="module" src="../js/donor_list.js"></script>
  </head>
<body>


<section class="grid-con new-form-con">

  <div
    class=" new-form col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12"
  >
  <div class="col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12 list-menu">
<a class="cntct-btn" href="cms_main_page.php">Home</a>
<a class="cntct-btn" href="donor_list.php">Donors</a>
<a class="cntct-btn" href="event_list.php">Event</a>
<a class="cntct-btn" href="news_blog_list.php">News and Blog</a>
<a class="cms-btn2" id="logout" href="login_form.php">log out</a>
</div>
<div
        id="project-list"
        class="col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12 list-project"
      >
      <div id="appdonor">
  <div v-if="loadingdonors">
    <img src="../images/loader.svg" alt="loading indicator" class="loader" />
  </div>

  <div v-else>
    <p v-for="donor in donorsData" :key="donor.id" class="admin-form-list">
      {{ donor.name }}
      
      <a class="test" :href="'edit_donor_form.php?id=' + donor.id">edit</a>

      <a class="test" :href="'http://localhost:8888/lumen_brothersinarms/public/donors/delete/' + donor.id">delete</a>
    </p>
  </div>
</div>
</div>
<h3>Add a New Donor</h3>
<form  action="http://localhost:8888/lumen_brothersinarms/public/donors/add" method="post" enctype="multipart/form-data">
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
<!-- <br><br><br>
<section id="logout-con" class="grid-con">
  <div
    id="logout"
    class="col-span-full m-col-start-10 m-col-end-13 l-col-start-10 l-col-end-12 "
  >
<a class="cntct-btn" id="logout" href="login_form.php">log out</a>
</div>
</section> -->
</body>
</html>
