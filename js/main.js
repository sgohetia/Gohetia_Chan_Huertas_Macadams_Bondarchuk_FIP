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

  document
    .querySelector("#toggleRightSideBtn")
    .addEventListener("click", openRightSide);
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
})();
