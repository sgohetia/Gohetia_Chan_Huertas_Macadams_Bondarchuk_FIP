<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Brothers in Arms</title>
    <link
      rel="shortcut icon"
      href="images/brothers-in-arms-icon.svg"
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
    <script defer src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script defer type="module" src="js/home.js"></script>
  </head>

  <body>
    <div class="site-wrapper">
      <div class="header-index">
        <header>
          <nav class="container navbar">
            <div class="container-nav flex" id="main-header">
              <a class="navbar-logo" href="index.php">
                <!-- <img src="images/brothers-in-arms-logo.svg" alt="logo"
              /> -->
                <img
                  class="logo-desktop"
                  src="images/brothers-in-arms-logo.svg"
                  alt="Desktop Logo"
                />
                <img
                  class="logo-mobile"
                  src="images/logo_v1.png"
                  alt="Mobile Logo"
                />
              </a>
              <button class="navbar-toggler" id="openNavBtn" type="button">
                <span class="fa-solid fa-bars"></span>
              </button>
              <ul class="navbar-nav flex">
                <li><a class="nav-link active" href="index.php">Home</a></li>
                <li><a class="nav-link" href="#about">About Us</a></li>
                <li><a class="nav-link" href="history.php">History</a></li>
                <li><a class="nav-link" href="#" id="toggleRightSideBtn">Donate</a></li>
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
                    <li><a class="dropdown-item" href="soldiers-letter.html">Soldiers Letters</a></li>
                    <li>
                      <a class="dropdown-item" href="memorial.html">Memorial</a>
                    </li>
                    <li><a class="dropdown-item" href="#event">Event</a></li>
                    <li><a class="dropdown-item" href="#blog">Blog</a></li>
                  </ul>
                </li>
              </ul>
            </div>

            <div class="flex nav-right">
              <i id="openSearchBarBtn" class="fa-solid fa-magnifying-glass"></i>
              <!-- <i
                id="toggleRightSideBtn"
                class="fa-solid fa-hand-holding-dollar"
              ></i> -->
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
                <li><a class="nav-link" href="#about">About Us</a></li>
                <li><a class="nav-link" href="history.php">History</a></li>
                <li><a class="nav-link" href="#donate">Donate</a></li>
                <li><a class="nav-link" href="contactform.html">Contact Us</a></li>
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
                      <li><a class="nav-link" href="soldiers-letter.html">Soldiers Letters</a></li>
                    <li>
                      <a class="nav-link" href="memorial.html">Memorial</a>
                    </li>
                    <li><a class="nav-link" href="#event">Event</a></li>
                      <li><a class="nav-link" href="#blog">Blog</a></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          </aside>
          <!-- search  bar -->
          <!-- <div id="search-bar">
            <div class="btn_hover1" id="closeSearchBarBtn">
              <i class="fa-solid fa-xmark"></i>
            </div>
            <form method="search" action="#">
              <input type="search" required placeholder="Search..." />
              <button type="submit" class="btn_hover1">Search</button>
            </form>
          </div> -->
          <div id="app">
            <div id="search-bar" :style="searchBarStyle">
              <div class="btn_hover1" id="closeSearchBarBtn" @click="toggleSearchBar(false)">
                <i class="fa-solid fa-xmark"></i>
              </div>
            <form @submit.prevent="search">
              <input type="search" v-model="query" required :placeholder="errorMessage || 'Search...'" />
              <button type="submit" class="btn_hover1">Search</button>
            </form>
          </div>
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

        <section class="hero">
          <div class="container" data-aos="zoom-in">
            <div>
              <div class="center-data">
                <h1>                 
                <span id="counter">0</span> Million Soldiers, One Untold Story
                </h1>
                <h3 class="progress-h3 w-50">
                The progress bar shows the total donations raised so far, bringing us closer to our goal of supporting our heroes.
                </h3>
                <div class="counter-container">
                  <div class="progress-container">
                    <div class="progress-bar" id="progress-bar">0%</div>
                  </div>
                </div>
                <div class="center-btn flex">
                  <a href="#donate" class="btn_hover1 home-btn1">Donate</a>
                  <a href="memorial.html" class="btn_hover2 home-btn2">Memorial</a>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>

<div id="app1">
  <section class="feature">
    <div v-if="loadingannouncements">
      <img src="images/loader.svg" alt="loading indicator" class="loader" />
    </div>
    <div v-else class="container">
      <div class="flex">
        <div
          v-for="(announcement, index) in announcementsData"
          :key="index"
          class="header-card"
          v-bind:data-aos="announcement.animation"
        >
          <div>
            <figure>
              <img
                src="images/feature2.png"
                class="feature-img1"
                alt="feature"
              />
            </figure>
            <h4>{{ announcement.title }}</h4>
            <p>{{ announcement.message }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

      <section class="donation" id="donate">
        <div class="container position-relative">
          <div class="donation-para text-center" data-aos="fade-up">
            <h5>WHY DONATE?</h5>
            <h2 class="h2_margin">Make a Difference Today</h2>
            <p>
              Your support helps provide vital aid, honor sacrifices, and
              strengthen the community. Together, we empower those who served.
            </p>
          </div>
          <div class="donation-hr flex gap-1">
            <hr />
            <h6>Support Us</h6>
          </div>
          <div
            class="donation-line flex flex-center gap-1 flex-wrap p-relative"
          >
            <div data-aos="zoom-in" class="support1">
              <h2>01.</h2>
              <h4>Support Veterans' Well-being</h4>
            </div>
            <div data-aos="zoom-in" class="support2">
              <h2>02.</h2>
              <h4>Honor Their Sacrifice</h4>
            </div>
            <div data-aos="zoom-in" class="support3">
              <h2>03.</h2>
              <h4>Provide Essential Aid</h4>
            </div>
            <div data-aos="zoom-in" class="support4">
              <h2>04.</h2>
              <h4>Strengthen Community Bonds</h4>
            </div>
          </div>
          <div class="flex flex-center" data-aos="zoom-in">
            <a href="#" class="btn_hover2">I want to Donate</a>
          </div>
        </div>
      </section>

      <section class="about" id="about">
        <div class="container">
          <div class="about-data flex-sb">
            <div class="w-50 about-text" data-aos="fade-up">
              <div class="flex about-title">
                <hr />
                <h5>ABOUT US</h5>
              </div>
              <h2>THE BROTHER'S IN ARMS</h2>
              <p>
                Brothers in Arms is a dedicated organization committed to
                supporting veterans and their families. We provide essential
                resources, including mental health services, financial
                assistance, and community programs, to help those who have
                served transition to civilian life with dignity and stability.
                Our mission is to ensure that no hero is left behind, fostering
                a strong network of support and appreciation for their
                sacrifices. Through advocacy and action, we stand by those who
                stood for us.
              </p>
              <div class="flex gap-2 mt-30">
                <a href="history.php" class="btn_hover1">History</a>
                <a href="soldiers-letter.html" class="btn_hover2ab"
                  >Soldiers Letters</a
                >
              </div>
            </div>
            <div class="about-imgs flex flex-center w-50 about-image" data-aos="fade-down">
              <div>
                <figure>
                  <img src="images/brothers-in-arms-statue.png" alt="img" />
                </figure>
              </div>
              <div class="ab-count flex flex-center">
                <div class="flex flex-center">
                  <h2>2.4</h2>
                  <h2>M</h2>
                </div>
                <p>Soldiers, One Untold Story</p>
              </div>
              <div class="about-hr flex gap-1">
                <hr />
                <h6>Who we are</h6>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="event p-relative" id="event">
        <span> </span>
        <div class="container">
          <div class="flex flex-wrap">
            <div class="w-50 text-center event-text" data-aos="fade-up">
              <div class="flex gap-2">
                <hr class="event-hr1" />
                <h5>EVENTS</h5>
              </div>
              <h2 class="mt-1">
                Join the Mission: Engage, Support, and Make an Impact
              </h2>
              <p class="mt-1">
                At Brothers in Arms, we believe in the power of community and
                action. Our events bring people together to raise awareness,
                show support, and make a real difference. Whether it’s a charity
                gaming tournament, a fitness challenge, a live benefit concert,
                or an inspiring storytelling night, each event is an opportunity
                to connect, give back, and stand with those who serve. Be part
                of something bigger—join us in making a lasting impact.
              </p>
            </div>
            <div class="w-50 mt-15 event-content">
              <div
                class="accordion flex flex-col gap-2"
                id="accordionExample"
                data-aos="fade-down"
              >
              
        <div id="appevent">
          <div v-if="loadingEvents">
            <img src="images/loader.svg" alt="loading indicator" class="loader" />
            </div>
                <div v-for="event in eventsData" class="accordion-item">
                       <h2 class="accordion-header">
                          <button class="accordion-button flex-sb" type="button">
                          {{event.event_name}} {{event.date_time}}  
                  <img src="images/plus.png" alt="img" />
                         </button>
                          </h2>
                          <div class="accordion-collapse">
                          <p>
               {{event.description}}
               
              </p>
              
                     </div>
                     <br>
                     </div>
          </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="blog" id="blog">
        <div class="container">
          <div class="flex blog-center" data-aos="fade-down">
            <div class="w-66 blog-text">
              <div class="flex gap-1">
                <hr class="blog-hr1" />
                <h5>BLOGS</h5>
              </div>
              <h2 class="mt-1">Latest Posts</h2>
              <p class="mt-1 mb-15">
                Get the latest updates, inspiring stories, and community
                highlights from Brothers in Arms. Stay informed, get involved,
                and see the impact we're making together!
              </p>
            </div>
            <div class="w-33 mt-1 flex flex-end blog-allbtn">
              <a href="blogs.html" class="btn_hover2">See all blogs</a>
            </div>
          </div>
          <div class="flex gap-2 mt-15 blog-cards">
            <div data-aos="fade-up" class="blog-card w-100">
              <img src="images/blog1.png" class="card-img-top" alt="img" />
              <div class="card-body">
                <h4>2025 NEWS UPDATES OF BROTHER'S IN ARMS</h4>
                <a href="blog.html">Read More</a>
              </div>
            </div>
            <div data-aos="fade-down" class="blog-card w-100">
              <img src="images/blog2.png" class="card-img-top" alt="img" />
              <div class="card-body">
                <h4>2024 NEWS UPDATES OF BROTHER'S IN ARMS</h4>
                <a href="blog.html">Read More</a>
              </div>
            </div>
            <div data-aos="fade-up" class="blog-card w-100">
              <img src="images/blog3.png" class="card-img-top" alt="img" />
              <div class="card-body">
                <h4>2023 NEWS UPDATES OF BROTHER'S IN ARMS</h4>
                <a href="blog.html">Read More</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="ourpartners">
        <div class="container">
          <div class="flex flex-col gap-2">
            <hr class="hr1" />
            <h3 data-aos="zoom-in" class="mb-15">OUR SPONSORS</h3>
          </div>
          <div class="swiper ourpartners-slider sliderlogo" data-aos="zoom-in">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <img src="images/TDECU.svg" alt="Sponsor1" />
              </div>
              <div class="swiper-slide">
                <img src="images/chevron.png" alt="Sponsor2" />
              </div>
              <div class="swiper-slide">
                <img src="images/heb.png" alt="Sponsor3" />
              </div>
              <div class="swiper-slide">
                <img src="images/postoak.png" alt="Sponsor4" />
              </div>
              <div class="swiper-slide">
                <img src="images/woodforestbank.png" alt="Sponsor5" />
              </div>
              <div class="swiper-slide">
                <img src="images/amex.png" alt="Sponsor6" />
              </div>
            </div>
            <hr class="hr2" />
          </div>
        </div>
      </section>
      <footer>
        <div class="container">
          <div class="footer-hr flex flex-col">
            <div class="flex gap-1" data-aos="fade-left">
              <hr />
              <h6>Keep in Touch</h6>
            </div>
            <h3>KEEP UPDATED FOR THE LATEST NEWS</h3>
            <p class="text-center">
              Subscribe to our newsletter by entering your email and clicking
              'Get Notified' to stay updated with the latest news and exclusive
              updates!
            </p>
          </div>
          <form
            id="footer-form"
            class="flex flex-sb gap-2"
            data-aos="zoom-in"
            data-aos-delay="400"
          >
            <div id="footer-message"></div>
            <input type="email" required placeholder="Enter your mail" />
            <button type="submit" class="btn_hover1">Subscribe</button>
          </form>
        </div>
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
