export function gsapHistory() {
  gsap.registerPlugin(ScrollTrigger);
  gsap.from(".center-data-history", {
    scrollTrigger: {
      trigger: ".center-data-history",
      toggleActions: "play none none none",
      once: true,
    },
    x: -200,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });

  gsap.from(".history-desc", {
    scrollTrigger: {
      trigger: ".history-desc",
      toggleActions: "play none none none",
      once: true,
    },
    x: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".vcross-desc", {
    scrollTrigger: {
      trigger: ".vcross-desc",
      toggleActions: "play none none none",
      once: true,
    },
    x: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".vcross-imgs", {
    scrollTrigger: {
      trigger: ".vcross-imgs",
      toggleActions: "play none none none",
      once: true,
    },
    x: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
}
