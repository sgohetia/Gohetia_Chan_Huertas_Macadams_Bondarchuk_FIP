export function scrollTo() {
  gsap.registerPlugin(ScrollToPlugin);

  const navlinks = document.querySelectorAll("#main-header ul li a");

  function scrollLink(e) {
    const selectedLink = e.currentTarget.hash;

    // Allow external links or those without a hash to work normally
    if (!selectedLink || selectedLink === "#") {
      return;
    }
    e.preventDefault(); // Prevent only anchor links from jumping instantly
    gsap.to(window, {
      duration: 1,
      scrollTo: { y: selectedLink, offsetY: 50 },
    });
  }
  navlinks.forEach((link) => {
    link.addEventListener("click", scrollLink);
  });
}
