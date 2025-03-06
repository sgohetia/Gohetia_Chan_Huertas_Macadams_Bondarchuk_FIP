export function homeScript() {
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

  //Progress Bar
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

  //Hero counters
  const counterElement = document.querySelector("#counter");
  const start = 0;
  const end = 2.4;
  const duration = 2000;
  let startTime = null;

  function animateCounter(timestamp) {
    if (!startTime) startTime = timestamp;
    const progress = (timestamp - startTime) / duration;
    const currentValue = start + progress * (end - start);

    counterElement.textContent = currentValue.toFixed(1); // Keep one decimal place

    if (progress < 1) {
      requestAnimationFrame(animateCounter);
    } else {
      counterElement.textContent = end.toFixed(1);
    }
  }

  requestAnimationFrame(animateCounter);

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

          acoimg[otherIndex].src = "images/plus.png";
          acoimg[otherIndex].style.transform = "rotate(0deg)";
          otherButton.style.backgroundColor = "#fff";
        }
      });

      if (collapse.style.maxHeight) {
        collapse.style.maxHeight = null;

        acoimg[index].src = "images/plus.png";
        acoimg[index].style.transform = "rotate(90deg)";
        button.style.backgroundColor = "";
      } else {
        collapse.style.maxHeight = collapse.scrollHeight + "px";

        acoimg[index].style.transform = "rotate(180deg)";
        button.style.backgroundColor = "#ffba39";
      }
    });
  });
}
