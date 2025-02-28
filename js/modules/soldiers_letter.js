export function solidersLetter() {
  // const canvas = document.querySelector("#explode-view");
  // const context = canvas.getContext("2d");

  // canvas.width = 1920;
  // canvas.height = 1080;

  // const frameCount = 1305;
  // const images = [];

  // for (let i = 0; i < frameCount; i++) {
  //   const img = new Image();
  //   img.src = `images/letters/letters${(i + 1)
  //     .toString()
  //     .padStart(4, "0")}.png`;
  //   images.push(img);
  // }

  // const buds = { frame: 0 };
  // gsap.to(buds, {
  //   frame: 1304,
  //   snap: "frame",
  //   scrollTrigger: {
  //     trigger: "#explode-view",
  //     pin: true,
  //     scrub: 1,
  //     // markers: true,
  //     start: "top top",
  //     end: "500% top", //make it longer and look smoother
  //     //   end: `${frameCount * 0.4}% top`,
  //   },
  //   onUpdate: render,
  // });

  // images[0].addEventListener("load", render);

  // function render() {
  //   // console.log(buds.frame);
  //   // console.log(images[buds.frame]);
  //   context.clearRect(0, 0, canvas.width, canvas.height);
  //   context.drawImage(images[buds.frame], 0, 0);
  // }
  // const canvas = document.querySelector("#explode-view");
  // const context = canvas.getContext("2d");

  // gsap.registerPlugin(ScrollTrigger);

  // const frameCount = 1305; // Total frames
  // const images = [];

  // for (let i = 0; i < frameCount; i++) {
  //   const img = new Image();
  //   img.src = `images/letters/letters${(i + 1)
  //     .toString()
  //     .padStart(4, "0")}.png`;
  //   images.push(img);
  // }

  // function resizeCanvas() {
  //   const hero = document.querySelector(".letters");
  //   if (!hero) return;

  //   canvas.width = hero.clientWidth;
  //   canvas.height = hero.clientHeight;

  //   if (images.length > 0 && images[0].complete) {
  //     render();
  //   }
  // }

  // // Optimize resize event handling
  // let resizeTimeout;
  // window.addEventListener("resize", () => {
  //   clearTimeout(resizeTimeout);
  //   resizeTimeout = setTimeout(resizeCanvas, 100);
  // });

  // // Ensure images are loaded before animating
  // images[0].onload = () => {
  //   resizeCanvas();
  //   render();
  // };

  // // Scroll Animation (Now covers all frames)
  // const buds = { frame: 0 };
  // gsap.to(buds, {
  //   frame: frameCount - 1, // Ensures full animation
  //   snap: "frame",
  //   ease: "none",
  //   scrollTrigger: {
  //     trigger: "#explode-view",
  //     pin: true,
  //     scrub: 1,
  //     start: "top top",
  //     end: `${frameCount * 0.4}% top`, // Adjusted scroll distance
  //   },
  //   onUpdate: () => {
  //     render();
  //   },
  // });

  // // Render function with image loading check
  // function render() {
  //   if (!images[buds.frame] || !images[buds.frame].complete) return;
  //   context.clearRect(0, 0, canvas.width, canvas.height);
  //   context.drawImage(images[buds.frame], 0, 0, canvas.width, canvas.height);
  // }

  // // Call resizeCanvas() after images array is initialized
  // resizeCanvas();
  const canvas = document.querySelector("#explode-view");
  const context = canvas.getContext("2d");

  const frameCount = 1305;
  const images = [];

  for (let i = 0; i < frameCount; i++) {
    const img = new Image();
    img.src = `images/letters/letters${(i + 1)
      .toString()
      .padStart(4, "0")}.png`;
    images.push(img);
  }

  const buds = { frame: 0 };

  function resizeCanvas() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    render(); // Re-render on resize
  }

  window.addEventListener("resize", resizeCanvas);

  gsap.to(buds, {
    frame: frameCount - 1,
    snap: "frame",
    scrollTrigger: {
      trigger: "#explode-view",
      pin: true,
      scrub: 1,
      start: "top top",
      end: "500% top",
    },
    onUpdate: render,
  });

  images[0].addEventListener("load", render);

  function render() {
    context.clearRect(0, 0, canvas.width, canvas.height);

    const img = images[buds.frame];

    // Scale image to fit within the canvas
    const scale = Math.min(
      canvas.width / img.width,
      canvas.height / img.height
    );
    const imgWidth = img.width * scale;
    const imgHeight = img.height * scale;

    // Center the image
    const x = (canvas.width - imgWidth) / 2;
    const y = (canvas.height - imgHeight) / 2;

    context.drawImage(img, x, y, imgWidth, imgHeight);
  }

  resizeCanvas();
}
