<!DOCTYPE html>
<html lang="en">

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
    <script defer type="module" src="../js/event_list.js"></script>

  </head>
<body>
<!-- <section class="grid-con cms-menu">
    <div class="col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12">
<a class="cntct-btn" href="cms_main_page.php">Home</a>
<a class="cntct-btn" href="donor_list.php">Donors</a>
<a class="cntct-btn" href="event_list.php">Event</a>
<a class="cntct-btn"href="memorial_list.php">Memorial</a>
<a class="cntct-btn" href="news_blog_list.php">News and Blog</a>
</div>
</section> -->

<br>
<section class="new-form-con grid-con">
  <div
    class="new-form col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12"
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


<p class="admin-form-list">
<div id="appevent">
  <div v-if="loadingevents">
    <img src="../images/loader.svg" alt="loading indicator" class="loader" />
  </div>

  <div v-else>
    <p v-for="event in eventsData" :key="event.id" class="admin-form-list">
      {{ event.event_name }}
      
      <a class="test" :href="'edit_event_form.php?id=' + event.id">edit</a>

      <a class="test" :href="'http://localhost:8888/lumen_brothersinarms/public/events/delete/' + event.id">delete</a>
    </p>
  </div>
</div>
</div>
<h3>Add a New Event</h3>
<form  action="http://localhost:8888/lumen_brothersinarms/public/events/add" method="post" enctype="multipart/form-data">
    <label for="event_name">Event Name: </label>
    <input name="event_name" type="text" required><br><br>
    <label for="date_time">Date:</label>
    <input name="date_time" type="text" required><br><br>
    <label for="description">Description:</label>
    <input name="description" type="text" required><br><br>
    <input class="cntct-btn" id="submit" name="submit" type="submit" value="Add">
</form>
</div>
</section>
</body>
</html>
