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

  // Add event listener to the collapse button to toggle visibility
  if (collapseButton && collapseContent) {
    collapseButton.addEventListener("click", () => {
      // Toggle the 'show' class on the content element
      collapseContent.classList.toggle("show");

      // Update the aria-expanded attribute based on the visibility of the content
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

  // button back to top
  const backToTopBtn = document.querySelector("#backToTopBtn");

  window.addEventListener("scroll", function () {
    if (window.scrollY > 20) {
      backToTopBtn.style.display = "block";
    } else {
      backToTopBtn.style.display = "none";
    }
  });

  backToTopBtn.addEventListener("click", function () {
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  });
})();
