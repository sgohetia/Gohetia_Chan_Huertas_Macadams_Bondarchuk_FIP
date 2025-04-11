export function solidersLetter() {
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
    render();
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

    const baseScale = Math.min(
      canvas.width / img.width,
      canvas.height / img.height
    );

    const scale = baseScale * 1.5;

    const imgWidth = img.width * scale;
    const imgHeight = img.height * scale;

    const x = (canvas.width - imgWidth) / 2;
    const y = (canvas.height - imgHeight) / 2;

    context.drawImage(img, x, y, imgWidth, imgHeight);
  }

  resizeCanvas();
}
