<!DOCTYPE html>
<html lang="en">
<?php
require_once('../includes/connect.php');
$query = 'SELECT * FROM news_blog WHERE news_blog.id = :news_blogId';
$stmt = $connect->prepare($query);
$news_blogId = $_GET['id'];
$stmt->bindParam(':news_blogId', $news_blogId, PDO::PARAM_INT);
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
    <h1>Edit News and Blogs</h1>
<p>Please edit the news and blogs.<br></p>
<form class="edit-form" action="edit_news_blog.php" method="POST">
<input name="pk" type="hidden" value="<?php echo $row['id']; ?>">
    <label for="title">Title: </label>
    <input name="title" type="text" value="<?php echo $row['title']; ?>" required><br><br>
    <label for="summary">Summary: </label>
    <textarea name="summary" type="text" required ><?php echo $row['summary'];?></textarea> <br><br>
    <label for="message">Message: </label>
    <textarea name="message" type="text" required ><?php echo $row['message'];?></textarea> <br><br>
    <label for="date">Date: </label>
    <input name="date" type="date" required value="<?php echo $row['date']; ?>"><br><br>
    <label for="type">Type: </label>
    <input name="type" type="text" value="<?php echo $row['type']; ?>" required><br><br>
    <label for="image_file">Image file: </label>
    <input name="image_file" type="text" value="<?php echo $row['image_file']; ?>" required><br><br>
    <label for="image_alt">Image Info: </label>
    <input name="image_alt" type="text" value="<?php echo $row['image_alt']; ?>" required><br><br>
    <input class="cntct-btn" name="submit" type="submit" value="Edit">
</form>
</div>
</section>
<?php
$stmt = null;
?>
</body>
</html>
