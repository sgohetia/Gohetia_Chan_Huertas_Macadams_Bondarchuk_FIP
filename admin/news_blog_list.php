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
    <script defer type="module" src="../js/news_blog_list.js"></script>
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


      <div id="app_news">
  <div v-if="loadingnews">
    <img src="../images/loader.svg" alt="loading indicator" class="loader" />
  </div>

  <div v-else>
    <p v-for="newsItem in newsData" :key="newsItem.id" class="admin-form-list">
      {{ newsItem.title }}
      
      <a class="test" :href="'edit_new_blog_form.php?id=' + newsItem.id">edit</a>

      <a class="test" :href="'http://localhost:8888/lumen_brothersinarms/public/news/delete/' + newsItem.id">delete</a>
    </p>
  </div>
</div>
</div>
<h3>Add a New News or Blog</h3>
<form  action="http://localhost:8888/lumen_brothersinarms/public/news/add" method="post" enctype="multipart/form-data">
  <label for="title">Title:</label>
  <input name="title" type="text" required><br><br>

  <label for="sub_title">Sub Title:</label>
  <input name="sub_title" type="text" required><br><br>

  <label for="summary">Summary:</label>
  <textarea name="summary" required></textarea><br><br>

  <label for="message">Message:</label>
  <textarea name="message" required></textarea><br><br>

  <label for="image_file">Image File:</label>
  <input name="image_file" type="file" required><br><br>

  <label for="image_alt">Image Alt Text:</label>
  <input name="image_alt" type="text" required><br><br>

  <label for="image_file2">Second Image File:</label>
  <input name="image_file2" type="file"><br><br>

  <label for="image_alt2">Second Image Alt Text:</label>
  <input name="image_alt2" type="text"><br><br>

    <input class="cntct-btn" id="submit" name="submit" type="submit" value="Add">
</form>
</div>
</section>

</body>
</html>
