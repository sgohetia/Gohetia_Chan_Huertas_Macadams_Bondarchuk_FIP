export function lettersList() {
  let accordionButtons = document.querySelectorAll(".accordion-button");
  let acoimg = document.querySelectorAll(".accordion-button img");
  let voiceEnabled = false; // AI voice is off by default

  const voiceToggleBtn = document.querySelector("#voiceToggle");

  voiceToggleBtn.addEventListener("click", function () {
    voiceEnabled = !voiceEnabled;
    this.textContent = voiceEnabled ? "🔊 Voice AI: On" : "🔇 Voice AI: Off";

    // Stop any current voice when toggled off
    if (!voiceEnabled) {
      speechSynthesis.cancel();
    }
  });

  accordionButtons.forEach(function (button, index) {
    button.addEventListener("click", function () {
      let collapse = this.parentElement.nextElementSibling;

      // Stop any current speech
      speechSynthesis.cancel();

      // Close other accordion items
      accordionButtons.forEach(function (otherButton, otherIndex) {
        if (otherButton !== button) {
          let otherCollapse = otherButton.parentElement.nextElementSibling;
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

        if (voiceEnabled) {
          let content = collapse.querySelector("p").textContent;
          let utterance = new SpeechSynthesisUtterance(content);
          speechSynthesis.speak(utterance);
        }
      }
    });
  });
}
