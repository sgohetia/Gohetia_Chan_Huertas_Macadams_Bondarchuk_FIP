const qr = require("qr-image");
const fs = require("fs");

const qrSVG = qr.image(
  "https://github.com/sgohetia/Gohetia_Chan_Huertas_Macadams_Bondarchuk_FIP",
  { type: "svg" }
);
qrSVG.pipe(fs.createWriteStream("baa.svg"));
