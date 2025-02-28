<!DOCTYPE html>
<html lang="en">
<?php
    //connect to the running datbase server and the sepcific database
    
   require_once ('includes/connect.php');

    // create a  query to run in SQL

    $stmt = $connect->prepare("SELECT gallery.id AS galleryitem, fname ,fname_alt,type FROM gallery");
    $stmt->execute();
    //$results = mysqli_query($connect,$query);


    ?>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>History - Brothers in Arms</title>
    <link
      rel="shortcut icon"
      href="images/brothers-in-arms-logo.svg"
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

    <link rel="stylesheet" href="css/main.css" />
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

    <script defer src="js/main.js"></script>
  </head>

  <body>
    <div class="site-wrapper">
      <div class="header-index">
        <header>
          <nav class="container navbar">
            <div class="container-nav flex">
              <a class="navbar-logo" href="index.php"
                ><img src="images/brothers-in-arms-logo.svg" alt="logo"
              /></a>
              <button class="navbar-toggler" id="openNavBtn" type="button">
                <span class="fa-solid fa-bars"></span>
              </button>
              <ul class="navbar-nav flex">
                <li><a class="nav-link" href="index.php">Home</a></li>
                <li><a class="nav-link" href="#">About Us</a></li>
                <li>
                  <a class="nav-link" href="contactform.html">Contact Us</a>
                </li>
                <li class="dropdown">
                  <a
                    class="nav-link dropdown-toggle"
                    href="#"
                    id="navbarScrollingDropdown"
                    role="button"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                  >
                    More
                  </a>
                  <ul
                    class="dropdown-menu"
                    aria-labelledby="navbarScrollingDropdown"
                  >
                    <li><a class="dropdown-item" href="#">Memorial</a></li>
                    <li>
                      <a class="dropdown-item active" href="history.html"
                        >History</a
                      >
                    </li>
                    <li><a class="dropdown-item" href="#">Event</a></li>
                    <li><a class="dropdown-item" href="#">Blog</a></li>
                  </ul>
                </li>
              </ul>
            </div>

            <div class="flex nav-right">
              <i id="openSearchBarBtn" class="fa-solid fa-magnifying-glass"></i>
              <i
                id="toggleRightSideBtn"
                class="fa-solid fa-hand-holding-dollar"
              ></i>
            </div>
          </nav>
          <aside id="mySidepanel" class="sidepanel">
            <div class="sidebar flex">
              <a href="index.php"
                ><img src="images/brothers-in-arms-logo.svg" alt="logo"
              /></a>
              <button class="closebtn btn_hover1" id="closeNavBtn">
                <i class="fa-solid fa-xmark"></i>
              </button>
            </div>
            <div>
              <ul>
                <li><a class="nav-link active" href="index.php">Home</a></li>
                <li><a class="nav-link" href="about.html">About Us</a></li>
                <li><a class="nav-link" href="contact.html">Contact Us</a></li>
                <li class="pages"><a href="#">More</a></li>
                <li class="collapse_btn">
                  <a
                    class="nav-link plus_collapse"
                    href="javascript:void(0);"
                    aria-expanded="false"
                    aria-controls="pages"
                  >
                    <i class="fa-solid fa-plus"></i>
                  </a>
                  <div class="collapse" id="pages">
                    <ul>
                      <li><a class="nav-link" href="#">Memorial</a></li>
                      <li><a class="nav-link" href="#">History</a></li>
                      <li><a class="dropdown-item" href="#">Memorial</a></li>
                      <li><a class="nav-link" href="contact.html">Blog</a></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          </aside>
          <div id="search-bar">
            <div class="btn_hover1" id="closeSearchBarBtn">
              <i class="fa-solid fa-xmark"></i>
            </div>
            <form method="search" action="#">
              <input type="search" required placeholder="Search..." />
              <button type="submit" class="btn_hover1">Search</button>
            </form>
          </div>

          <!-- Right Sidebar -->
          <section class="header-right-sidebar" id="right_side">
            <div class="flex flex-sb">
              <a href="index.php"
                ><img src="images/brothers-in-arms-logo.svg" alt="logo"
              /></a>
              <button class="close_right_sidebar fa-solid fa-xmark"></button>
            </div>
            <p>
              Brothers in Arms is committed to helping veterans rebuild their
              lives through mental health support, financial aid, and community
              programs. Your donation ensures no hero is left behind. Stand with
              us today.
            </p>
            <a href="#" class="btn_hover1">Donate</a>
            <hr />
            <h4>Contact details:</h4>
            <ul class="flex">
              <li>
                <a href="#"> <i class="fa-solid fa-phone"></i></a>
                <a href="#" class="text-lowercase">+123-456-7890</a>
              </li>
              <li>
                <a href="#"> <i class="fa-sharp fa-regular fa-clock"></i></a>
                <a href="#">8AM - 11PM Sunday - Weekend Day</a>
              </li>
            </ul>
            <span class="flex">
              <a href="#"><i class="fa-brands fa-facebook"></i></a>
              <a href="#"><i class="fa-brands fa-instagram"></i></a>
            </span>
          </section>
        </header>
      </div>
      <section class="blank">
        <h1>Welcome to Brother's in Arms History</h1>
        <p>Scroll to read more details.</p>
      </section>
      <section class="horizontal section">
        <div class="pin-wrap">
          <div class="animation-wrap to-right">
            <div class="item">
              Lorem ipsum, dolor sit amet consectetur adipisicing elit.
              Necessitatibus, temporibus esse magni illum eos natus ipsum minus?
              Quis excepturi voluptates atque dolorum minus eligendi! Omnis
              minima magni recusandae ex dignissimos.
            </div>
            <div class="item">
              Eaque ullam illum nobis deleniti mollitia unde, sed, nemo ipsa
              ratione ex, dicta aliquam voluptates! Odio vitae eum nobis
              dignissimos sunt ipsum repellendus totam optio distinctio. Laborum
              suscipit quia aperiam.
            </div>
            <div class="item">
              Animi, porro molestias? Reiciendis dolor aspernatur ab quos nulla
              impedit, dolores ullam hic commodi nobis nam. Dolorem expedita
              laudantium dignissimos nobis a. Dolorem, unde quidem. Tempora et a
              quibusdam inventore!
            </div>
            <div class="item">
              Labore, unde amet! Alias delectus hic laboriosam et dolorum?
              Saepe, dicta eaque? Veniam eos blanditiis neque. Officia et
              nostrum, tempore modi quo praesentium aspernatur vero dolor, ipsa
              unde perspiciatis minima.
            </div>
            <div class="item">
              Quaerat error dolorem aspernatur magni dicta ut consequuntur
              maxime tempore. Animi odio eos quod culpa nulla consectetur?
              Aperiam ipsam ducimus delectus reprehenderit unde, non laborum
              voluptate laboriosam, officiis at ea!
            </div>
          </div>
        </div>
      </section>
      <section class="awards">
        <div class="slider">
          <!-- list Items -->
          <div class="list">
            <div class="item active">
              <img src="images/img1.png" />
              <div class="content">
                <p>Award</p>
                <h2>Soldier 01</h2>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Labore, neque? Lorem ipsum dolor sit amet consectetur
                  adipisicing elit. Ipsum, ex.
                </p>
              </div>
            </div>
            <div class="item">
              <img src="images/img2.jpg" />
              <div class="content">
                <p>Award</p>
                <h2>Soldier 02</h2>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Labore, neque? Lorem ipsum dolor sit amet consectetur
                  adipisicing elit. Ipsum, ex.
                </p>
              </div>
            </div>
            <div class="item">
              <img src="images/img3.jpg" />
              <div class="content">
                <p>Award</p>
                <h2>Soldier 03</h2>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Labore, neque? Lorem ipsum dolor sit amet consectetur
                  adipisicing elit. Ipsum, ex.
                </p>
              </div>
            </div>
            <div class="item">
              <img src="images/img4.jpg" />
              <div class="content">
                <p>Award</p>
                <h2>Soldier 04</h2>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Labore, neque? Lorem ipsum dolor sit amet consectetur
                  adipisicing elit. Ipsum, ex.
                </p>
              </div>
            </div>
            <div class="item">
              <img src="images/img5.jpg" />
              <div class="content">
                <p>Award</p>
                <h2>Soldier 05</h2>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Labore, neque? Lorem ipsum dolor sit amet consectetur
                  adipisicing elit. Ipsum, ex.
                </p>
              </div>
            </div>
          </div>
          <!-- button arrows -->
          <div class="arrows">
            <button class="arrowbtn" id="prev">&lt;</button>
            <button class="arrowbtn" id="next">&gt;</button>
          </div>
          <!-- thumbnail -->
          <div class="thumbnail">
            <div class="item active">
              <img src="images/img1.png" />
              <div class="content">Soldier Name</div>
            </div>
            <div class="item">
              <img src="images/img2.jpg" />
              <div class="content">Soldier Name</div>
            </div>
            <div class="item">
              <img src="images/img3.jpg" />
              <div class="content">Soldier Name</div>
            </div>
            <div class="item">
              <img src="images/img4.jpg" />
              <div class="content">Soldier Name</div>
            </div>
            <div class="item">
              <img src="images/img5.jpg" />
              <div class="content">Soldier Name</div>
            </div>
          </div>
        </div>
      </section>

      <section class="section-gal">
        <div class="flex gap-2">
          <hr class="event-hr1" />
          <h2>The Gallery</h2>
        </div>
        <ul>
          <li class="list active" data-filter="all">All</li>
          <li class="list" data-filter="ww1">WW1</li>
          <li class="list" data-filter="ww2">WW2</li>
          <li class="list" data-filter="date1">Date1</li>
          <li class="list" data-filter="date2">Date2</li>
          <li class="list" data-filter="date3">Date3</li>
        </ul>
        <div class="product">
        <?php 
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            echo '<div class="itemBox" data-item="'.$row['type'].'">
            <img src="'.$row['fname'].'" alt="'.$row['fname_alt'].'" />
            </div>';
        }
            $stmt = null;
        
            ?>

          
        </div>
      </section>
      <footer>
        <div class="footer-menu">
          <div class="container">
            <div class="flex flex-start footer-center">
              <div class="w-33 flex flex-col gap-2 flex-start">
                <a href="index.php"
                  ><img
                    src="images/brothers-in-arms-logo.svg"
                    alt="footer-logo"
                /></a>
                <p>
                  Brothers in Arms is committed to helping veterans rebuild
                  their lives through mental health support, financial aid, and
                  community programs. Your donation ensures no hero is left
                  behind. Stand with us today.
                </p>
                <span class="flex gap-2">
                  <a href="#"><i class="fa-brands fa-facebook"></i></a>
                  <a href="#"><i class="fa-brands fa-instagram"></i></a>
                </span>
              </div>
              <div class="w-16 mt-1">
                <h4>Quick Links</h4>
                <ul class="flex flex-col gap-2 flex-start">
                  <li><a href="index.php">Home</a></li>
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Donation</a></li>
                  <li><a href="#">Blogs</a></li>
                </ul>
              </div>
              <div class="w-16 mt-45 flex-end">
                <ul class="flex flex-col gap-2 flex-start">
                  <li><a href="history.html">History</a></li>
                  <li><a href="contactform.html">Contact Us</a></li>
                  <li><a href="#">Privacy policy</a></li>
                </ul>
              </div>
              <div class="w-33 mt-1 flex flex-col flex-start">
                <h4>Keep in Touch</h4>
                <ul class="flex flex-col gap-2 flex-start">
                  <li>
                    <a href="#"> <i class="fa-solid fa-phone"></i></a>
                    <a href="#" class="text-lowercase">+123-456-7890</a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa-sharp fa-regular fa-clock"></i
                    ></a>
                    <a href="#">8AM - 11PM Sunday - Weekend Day</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="copyright">
          <div class="container">
            <h6>
              Copyright © 2025 By
              <a href="index.php" class="p-0"> The Brother's in Arms. </a>
              All Rights Reserved.
            </h6>
          </div>
        </div>
      </footer>
    </div>

    <!--========== SCROLL UP ==========-->

    <a href="#" class="scrollup" id="scroll-up">
      <i class="bx bx-up-arrow-alt scrollup__icon"></i>
    </a>
  </body>
</html>
