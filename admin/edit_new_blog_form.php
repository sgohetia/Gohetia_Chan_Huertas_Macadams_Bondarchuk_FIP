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
    <script defer type="module" src="../js/news_blog_details.js"></script>
  </head>
<body>

<section class=" edit-con grid-con">
    <div class="edit col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12">
    <h1>Edit News and Blogs</h1>
<p>Please edit the news and blogs.<br></p>
<div id="app_newsdetails">
<div v-if="loadingnewsdetails">
    <img src="../images/loader.svg" alt="loading indicator" class="loader" />
  </div>
<form class="edit-form" action="http://localhost:8888/lumen_brothersinarms/public/events/edit/' + newsDetailsData.id" method="POST">
<input name="pk" type="hidden" :value="newsDetailsData.id">
    <label for="title">Title: </label>
    <input name="title" type="text" :value="newsDetailsData.title" required><br><br>
    <label for="sub_title">Sub-title: </label>
    <input name="sub_title" type="text" :value="newsDetailsData.sub_title" required > <br><br>
    <label for="summary">Summary: </label>
    <textarea name="summary" type="text" required >{{newsDetailsData.summary}}</textarea> <br><br>
    <label for="message">Message: </label>
    <textarea name="message" type="text" required >{{newsDetailsData.message}}</textarea> <br><br>
    <label for="image_file">Image file: </label>
    <input name="image_file" type="text" :value="newsDetailsData.image_file" required><br><br>
    <label for="image_alt">Image Info: </label>
    <input name="image_alt" type="text" :value="newsDetailsData.image_alt" required><br><br>
    <label for="image_file2">Image file2: </label>
    <input name="image_file2" type="text" :value="newsDetailsData.image_file2" required><br><br>
    <label for="image_alt2">Image Info2: </label>
    <input name="image_alt2" type="text" :value="newsDetailsData.image_alt2" required><br><br>
    <input class="cntct-btn" name="submit" type="submit" value="Edit">
</form>
</div>
</div>
</section>
<?php
$stmt = null;
?>
</body>
</html>
