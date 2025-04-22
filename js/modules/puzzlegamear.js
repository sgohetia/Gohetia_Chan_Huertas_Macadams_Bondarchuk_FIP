export function puzzlegamear() {
  const correctMap = {
    tl: "topLeft0.png",
    tr: "topRight0.png",
    bl: "bottomLeft0.png",
    br: "bottomRight0.png",
  };

  let dragPiece = null;

  const puzzlePieces = document.querySelectorAll(".puzzle-pieces img");
  const dropZones = document.querySelectorAll(".drop-zone");
  const puzzleButtons = document.getElementById("puzzle-buttons");
  const replayButton = document.getElementById("replay-button");

  // Enable dragging for puzzle pieces
  puzzlePieces.forEach((img) => {
    img.addEventListener("dragstart", (e) => {
      dragPiece = e.target;
    });

    img.addEventListener("touchstart", (e) => {
      dragPiece = e.target;
      dragPiece.classList.add("dragging");
    });
  });

  // Setup drop zones
  dropZones.forEach((zone) => {
    zone.addEventListener("dragover", (e) => e.preventDefault());

    zone.addEventListener("drop", (e) => {
      e.preventDefault();
      if (zone.children.length === 0) {
        zone.appendChild(dragPiece);
        dragPiece.classList.remove("dragging");
        checkWin();
      }
    });

    zone.addEventListener("touchend", (e) => {
      if (zone.children.length === 0 && dragPiece) {
        zone.appendChild(dragPiece);
        dragPiece.classList.remove("dragging");
        dragPiece = null;
        checkWin();
      }
    });
  });

  function checkWin() {
    for (let zone of dropZones) {
      if (zone.children.length !== 1) return;

      const imgSrc = zone.children[0].getAttribute("src");
      const zoneClass = [...zone.classList].find((cls) =>
        ["tl", "tr", "bl", "br"].includes(cls)
      );

      if (!imgSrc.includes(correctMap[zoneClass])) return;
    }

    // ✅ Puzzle solved: Show completed image + AR, hide buttons, show replay
    document.getElementById("game-boards").style.display = "none";
    document.getElementById("puzzle-complete").style.display = "block";
    document.getElementById("ar-section").style.display = "flex";
    puzzleButtons.style.display = "none"; // Hide reset & skip
    replayButton.style.display = "block"; // Show replay button
    //alert("Puzzle Solved! AR Model Unlocked.");
  }

  // ✅ Skip puzzle logic
  window.skipPuzzle = function () {
    document.getElementById("ar-section").style.display = "flex";
    document.getElementById("game-boards").style.display = "none";
    document.getElementById("puzzle-complete").style.display = "none"; // ❌ Do NOT show completed image
    document.getElementById("puzzle-buttons").style.display = "none"; // Hide reset & skip buttons
    document.getElementById("replay-button").style.display = "block"; // ✅ Show replay button
  };

  // ✅ Reset puzzle logic (used for both Reset and Replay)
  window.resetPuzzle = function () {
    const puzzleTray = document.querySelector(".puzzle-pieces");
    const allPieces = document.querySelectorAll(".puzzle-image");

    // Move pieces back to tray
    allPieces.forEach((piece) => {
      puzzleTray.appendChild(piece);
    });

    // Clear drop zones
    dropZones.forEach((zone) => {
      zone.innerHTML = "";
    });

    // Reset visibility
    document.getElementById("game-boards").style.display = "flex";
    document.getElementById("puzzle-complete").style.display = "none";
    document.getElementById("ar-section").style.display = "none";
    puzzleButtons.style.display = "flex"; // Bring back reset & skip
    replayButton.style.display = "none"; // Hide replay button
  };
}
