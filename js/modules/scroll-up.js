export function scrollUp() {
  function scrollUp() {
    const scrollUp = document.querySelector("#scroll-up");

    if (this.scrollY >= 350) scrollUp.classList.add("show-scroll");
    else scrollUp.classList.remove("show-scroll");
  }
  window.addEventListener("scroll", scrollUp);
}
