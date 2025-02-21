(() => {
  const getElement = (selector) =>
    document.querySelector(selector) ||
    console.error(`Error: Element '${selector}' not found!`);

  const toggleNav = (open) => {
    const sidepanel = getElement("#mySidepanel");
    if (sidepanel) {
      sidepanel.style.left = open ? "0" : "-320px";
    }
  };

  const openNav = () => toggleNav(true);
  const closeNav = () => toggleNav(false);

  const collapseButton = document.querySelector(".plus_collapse");
  const collapseContent = document.querySelector("#pages");

  if (collapseButton && collapseContent) {
    collapseButton.addEventListener("click", () => {
      collapseContent.classList.toggle("show");

      const isExpanded = collapseContent.classList.contains("show");
      collapseButton.setAttribute("aria-expanded", isExpanded);
    });
  }

  document.querySelector("#openNavBtn").addEventListener("click", openNav);
  document.querySelector("#closeNavBtn").addEventListener("click", closeNav);

  //Toggle Search bar
  const toggleSearchBar = (open) => {
    const searchBar = document.querySelector("#search-bar");
    if (!searchBar) {
      console.error("Error: Search bar element not found!");
      return;
    }

    searchBar.style.height = open ? "100vh" : "0";
    searchBar.style.borderRadius = open ? "0" : "100% 100% 0 0";
  };

  document
    .querySelector("#openSearchBarBtn")
    .addEventListener("click", () => toggleSearchBar(true));
  document
    .querySelector("#closeSearchBarBtn")
    .addEventListener("click", () => toggleSearchBar(false));

  // Toggle Sidebar
  const toggleRightSide = (isOpen) => {
    const sidepanel = document.querySelector("#right_side");
    if (!sidepanel) {
      console.error("Error: Side panel element not found!");
      return;
    }

    sidepanel.style.right = isOpen ? "0" : "-355px";
  };

  const openRightSide = () => toggleRightSide(true);
  const closeRightSide = () => toggleRightSide(false);

  // document
  //   .querySelector("#toggleRightSideBtn, #toggleRightSideBtn2")
  //   .addEventListener("click", openRightSide);
  document
    .querySelectorAll("#toggleRightSideBtn, #toggleRightSideBtn2")
    .forEach((btn) => btn.addEventListener("click", openRightSide));
  document
    .querySelector(".close_right_sidebar")
    .addEventListener("click", closeRightSide);

  // --- This is to show the scroll up button
  function scrollUp() {
    const scrollUp = document.querySelector("#scroll-up");

    if (this.scrollY >= 350) scrollUp.classList.add("show-scroll");
    else scrollUp.classList.remove("show-scroll");
  }
  window.addEventListener("scroll", scrollUp);

  // Sponsor logo slider
  new Swiper(".ourpartners-slider", {
    loop: true,
    slidesPerView: 3,
    spaceBetween: 20,
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
    },
    breakpoints: {
      640: { slidesPerView: 2 },
      1024: { slidesPerView: 3 },
      1440: { slidesPerView: 4 },
    },
  });

  // Announcment animation
  gsap.registerPlugin(ScrollTrigger);

  gsap.from(".header-card", {
    opacity: 0,
    y: 100,
    duration: 1,
    stagger: 0.3,
    scrollTrigger: {
      trigger: ".header-card",
      start: "top 80%",
      toggleActions: "play none none reverse",
    },
  });

  let progressBar = document.getElementById("progress-bar");
  let progress = 66;
  let currentProgress = 0;

  let interval = setInterval(() => {
    if (currentProgress >= progress) {
      clearInterval(interval);
    } else {
      currentProgress++;
      progressBar.style.width = currentProgress + "%";
      progressBar.textContent = currentProgress + "%";
    }
  }, 20);

  // Event
  let accordionButtons = document.querySelectorAll(".accordion-button");
  let acoimg = document.querySelectorAll(".accordion-button img");

  accordionButtons.forEach(function (button, index) {
    button.addEventListener("click", function () {
      let collapse = this.parentElement.nextElementSibling;

      // Close all other accordion items
      accordionButtons.forEach(function (otherButton, otherIndex) {
        if (otherButton !== button) {
          var otherCollapse = otherButton.parentElement.nextElementSibling;
          otherCollapse.style.maxHeight = null;
          // Reset the image source and rotation for other accordion items
          acoimg[otherIndex].src = "images/plus.png";
          acoimg[otherIndex].style.transform = "rotate(0deg)";
          otherButton.style.backgroundColor = "#fff";
        }
      });

      // Toggle the clicked accordion item
      if (collapse.style.maxHeight) {
        collapse.style.maxHeight = null;
        // Reset the image source, rotation, and background color when collapsing
        acoimg[index].src = "images/plus.png";
        acoimg[index].style.transform = "rotate(90deg)";
        button.style.backgroundColor = "";
      } else {
        collapse.style.maxHeight = collapse.scrollHeight + "px";
        // Change the image source, set rotation, and background color when expanding
        acoimg[index].src = "images/menus.png";
        acoimg[index].style.transform = "rotate(180deg)";
        button.style.backgroundColor = "#ffba39";
      }
    });
  });

  //contact form
  const tabs = document.querySelectorAll(".tab");
  const forms = document.querySelectorAll(".form-container");

  tabs.forEach((tab) => {
    tab.addEventListener("click", function () {
      tabs.forEach((t) => t.classList.remove("active"));
      forms.forEach((f) => f.classList.remove("active"));

      this.classList.add("active");
      document
        .querySelector(`#${this.getAttribute("data-target")}`)
        .classList.add("active");
    });
  });

  //Scroll slide history

  const horizontalSections = gsap.utils.toArray("section.horizontal");

  horizontalSections.forEach(function (sec, i) {
    var thisPinWrap = sec.querySelector(".pin-wrap");
    var thisAnimWrap = thisPinWrap.querySelector(".animation-wrap");

    var getToValue = () => -(thisAnimWrap.scrollWidth - window.innerWidth);

    gsap.fromTo(
      thisAnimWrap,
      {
        x: () =>
          thisAnimWrap.classList.contains("to-right") ? 0 : getToValue(),
      },
      {
        x: () =>
          thisAnimWrap.classList.contains("to-right") ? getToValue() : 0,
        ease: "none",
        scrollTrigger: {
          trigger: sec,
          start: "top top",
          end: () => "+=" + (thisAnimWrap.scrollWidth - window.innerWidth),
          pin: thisPinWrap,
          invalidateOnRefresh: true,
          scrub: true,
          //markers: true, // Uncomment this to debug
        },
      }
    );
  });

  //Awards Slider

  let items = document.querySelectorAll(".slider .list .item");
  let next = document.querySelector("#next");
  let prev = document.querySelector("#prev");
  let thumbnails = document.querySelectorAll(".thumbnail .item");

  // config param
  let countItem = items.length;
  let itemActive = 0;
  // event next click
  next.onclick = function () {
    itemActive = itemActive + 1;
    if (itemActive >= countItem) {
      itemActive = 0;
    }
    showSlider();
  };
  //event prev click
  prev.onclick = function () {
    itemActive = itemActive - 1;
    if (itemActive < 0) {
      itemActive = countItem - 1;
    }
    showSlider();
  };
  // auto run slider
  let refreshInterval = setInterval(() => {
    next.click();
  }, 5000);
  function showSlider() {
    // remove item active old
    let itemActiveOld = document.querySelector(".slider .list .item.active");
    let thumbnailActiveOld = document.querySelector(".thumbnail .item.active");
    itemActiveOld.classList.remove("active");
    thumbnailActiveOld.classList.remove("active");

    // active new item
    items[itemActive].classList.add("active");
    thumbnails[itemActive].classList.add("active");
    setPositionThumbnail();

    // clear auto time run slider
    clearInterval(refreshInterval);
    refreshInterval = setInterval(() => {
      next.click();
    }, 5000);
  }
  function setPositionThumbnail() {
    let thumbnailActive = document.querySelector(".thumbnail .item.active");
    let rect = thumbnailActive.getBoundingClientRect();
    if (rect.left < 0 || rect.right > window.innerWidth) {
      thumbnailActive.scrollIntoView({
        behavior: "smooth",
        inline: "nearest",
      });
    }
  }

  // click thumbnail
  thumbnails.forEach((thumbnail, index) => {
    thumbnail.addEventListener("click", () => {
      itemActive = index;
      showSlider();
    });
  });

  //Gallery
  let list = document.querySelectorAll(".list");
  let itemBox = document.querySelectorAll(".itemBox");

  for (let i = 0; i < list.length; i++) {
    list[i].addEventListener("click", function () {
      for (let j = 0; j < list.length; j++) {
        list[j].classList.remove("active");
      }
      this.classList.add("active");

      let dataFilter = this.getAttribute("data-filter");

      for (let k = 0; k < itemBox.length; k++) {
        itemBox[k].classList.remove("active");
        itemBox[k].classList.add("hide");

        if (
          itemBox[k].getAttribute("data-item") == dataFilter ||
          dataFilter == "all"
        ) {
          itemBox[k].classList.remove("hide");
          itemBox[k].classList.add("active");
        }
      }
    });
  }
})();
