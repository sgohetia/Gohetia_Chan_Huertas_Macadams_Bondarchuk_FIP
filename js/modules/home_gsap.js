export function gsapAnimation() {
  gsap.registerPlugin(ScrollTrigger);
  gsap.from(".home-btn1", {
    scrollTrigger: {
      trigger: ".home-btn1",
      toggleActions: "play none none none",
      once: true,
    },
    x: -300,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".home-btn2", {
    scrollTrigger: {
      trigger: ".home-btn2",
      toggleActions: "play none none none",
      once: true,
    },
    x: 300,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".progress-h3", {
    scrollTrigger: {
      trigger: ".progress-h3",
      // toggleActions: "restart none restart none",
      toggleActions: "play none none none",
      once: true,
    },
    scale: 0.5,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".about-text", {
    scrollTrigger: {
      trigger: ".about-text",
      toggleActions: "play none none none",
      once: true,
    },
    x: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".about-image", {
    scrollTrigger: {
      trigger: ".about-image",
      toggleActions: "play none none none",
      once: true,
    },
    x: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".about-hr", {
    scrollTrigger: {
      trigger: ".about-hr",
      toggleActions: "play none none none",
      once: true,
    },
    y: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".donation-hr", {
    scrollTrigger: {
      trigger: ".donation-hr",
      toggleActions: "play none none none",
      once: true,
    },
    y: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".donation-para", {
    scrollTrigger: {
      trigger: ".donation-para",
      // toggleActions: "restart none restart none",
      toggleActions: "play none none none",
      once: true,
    },
    scale: 0.5,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".support1", {
    scrollTrigger: {
      trigger: ".support1",
      toggleActions: "play none none none",
      once: true,
    },
    y: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".support2", {
    scrollTrigger: {
      trigger: ".support2",
      toggleActions: "play none none none",
      once: true,
    },
    y: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".support3", {
    scrollTrigger: {
      trigger: ".support3",
      toggleActions: "play none none none",
      once: true,
    },
    y: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".support4", {
    scrollTrigger: {
      trigger: ".support4",
      toggleActions: "play none none none",
      once: true,
    },
    y: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".event-text", {
    scrollTrigger: {
      trigger: ".event-text",
      toggleActions: "play none none none",
      once: true,
    },
    x: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".event-content", {
    scrollTrigger: {
      trigger: ".event-content",
      toggleActions: "play none none none",
      once: true,
    },
    x: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".blog-text", {
    scrollTrigger: {
      trigger: ".blog-text",
      toggleActions: "play none none none",
      once: true,
    },
    x: -100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".blog-allbtn", {
    scrollTrigger: {
      trigger: ".blog-allbtn",
      toggleActions: "play none none none",
      once: true,
    },
    x: 100,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
  gsap.from(".blog-cards", {
    scrollTrigger: {
      trigger: ".blog-cards",
      // toggleActions: "restart none restart none",
      toggleActions: "play none none none",
      once: true,
    },
    scale: 0.5,
    opacity: 0,
    duration: 2,
    ease: "power2.out",
  });
}
