export function event() {
  const appevent = Vue.createApp({
    created() {
      // Ideal to get your remote data during the created phase
      fetch("http://localhost/lumen_brothersinarms/public/events")
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          this.eventsData = data;
          this.loadingevents = false;
        })
        .then(() => {
          let accordionButtons = document.querySelectorAll(".accordion-button");
          let acoimg = document.querySelectorAll(".accordion-button img");

          accordionButtons.forEach(function (button, index) {
            button.addEventListener("click", function () {
              let collapse = this.parentElement.nextElementSibling;

              // Close all other accordion items
              accordionButtons.forEach(function (otherButton, otherIndex) {
                if (otherButton !== button) {
                  var otherCollapse =
                    otherButton.parentElement.nextElementSibling;
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
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        eventsData: [],
        loadingevents: true,
        error: "",
      };
    },
  }).mount("#appevent");
}
