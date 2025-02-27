export function contactformswitch() {
  const tabs = document.querySelectorAll(".tab");
  const forms = document.querySelectorAll(".form-container");

  tabs.forEach((tab) => {
    tab.addEventListener("click", function () {
      tabs.forEach((t) => t.classList.remove("active"));
      forms.forEach((f) => f.classList.remove("active"));

      this.classList.add("active");
      document
        .querySelector(`#${this.getAttribute("data-target")}`)
        .classList.add("active");
    });
  });
}
