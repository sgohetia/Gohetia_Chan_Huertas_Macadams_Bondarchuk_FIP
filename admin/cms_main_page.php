<!DOCTYPE html>
<html lang="en">

<?php

session_start();

if (!isset($_SESSION['username'])) {
    header('Location: cms_main_page.php');
    exit();
}

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

<section id="cms-con" class="grid-con">
  <div
    id="cms-form"
    class="col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12"
  >
  <img src="../images/brothers-in-arms-logo.png" alt="Brothers in Arms logo" />
<h3>Brothers and Arms CMS</h3>
<p>Welcome to the CMS page. Here you can add, edit the website.</p>
<p>Please choose what you want to ador edit</p>
<br>
<div class="flex flex-col gap-2">
<a class="cntct-btn" href="donor_list.php">Donors</a>
<a class="cntct-btn" href="event_list.php">Event</a>
<a class="cntct-btn"href="memorial_list.php">Memorial</a>
<a class="cntct-btn" href="news_blog_list.php">News and Blog</a>
</div>
</div>
</section>
<br><br><br>
<section id="logout-con" class="grid-con">
  <div
    id="logout"
    class="col-span-full m-col-start-9 m-col-end-11 l-col-start-10 l-col-end-12 "
  >
<a id="logout" class="cntct-btn" href="login_form.php">log out</a>
</div>
</section>
</body>
</html>
