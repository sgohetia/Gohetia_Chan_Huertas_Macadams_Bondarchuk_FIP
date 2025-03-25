export function awardsGallery() {
  //Awards Slider

  let items = document.querySelectorAll(".slider .list .item");
  let next = document.querySelector("#next");
  let prev = document.querySelector("#prev");
  let thumbnails = document.querySelectorAll(".thumbnail .item");

  // config param
  let countItem = items.length;
  let itemActive = 0;
  // event next click
  next.onclick = function () {
    itemActive = itemActive + 1;
    if (itemActive >= countItem) {
      itemActive = 0;
    }
    showSlider();
  };
  //event prev click
  prev.onclick = function () {
    itemActive = itemActive - 1;
    if (itemActive < 0) {
      itemActive = countItem - 1;
    }
    showSlider();
  };
  // auto run slider
  let refreshInterval = setInterval(() => {
    next.click();
  }, 20000);
  function showSlider() {
    // remove item active old
    let itemActiveOld = document.querySelector(".slider .list .item.active");
    let thumbnailActiveOld = document.querySelector(".thumbnail .item.active");
    itemActiveOld.classList.remove("active");
    thumbnailActiveOld.classList.remove("active");

    // active new item
    items[itemActive].classList.add("active");
    thumbnails[itemActive].classList.add("active");
    setPositionThumbnail();

    // clear auto time run slider
    clearInterval(refreshInterval);
    refreshInterval = setInterval(() => {
      next.click();
    }, 5000);
  }
  function setPositionThumbnail() {
    let thumbnailActive = document.querySelector(".thumbnail .item.active");
    let rect = thumbnailActive.getBoundingClientRect();
    if (rect.left < 0 || rect.right > window.innerWidth) {
      thumbnailActive.scrollIntoView({
        behavior: "smooth",
        inline: "nearest",
      });
    }
  }

  // click thumbnail
  thumbnails.forEach((thumbnail, index) => {
    thumbnail.addEventListener("click", () => {
      itemActive = index;
      showSlider();
    });
  });

  //Gallery
  let list = document.querySelectorAll(".list");
  let itemBox = document.querySelectorAll(".itemBox");

  for (let i = 0; i < list.length; i++) {
    list[i].addEventListener("click", function () {
      for (let j = 0; j < list.length; j++) {
        list[j].classList.remove("active");
      }
      this.classList.add("active");

      let dataFilter = this.getAttribute("data-filter");

      for (let k = 0; k < itemBox.length; k++) {
        itemBox[k].classList.remove("active");
        itemBox[k].classList.add("hide");

        if (
          itemBox[k].getAttribute("data-item") == dataFilter ||
          dataFilter == "all"
        ) {
          itemBox[k].classList.remove("hide");
          itemBox[k].classList.add("active");
        }
      }
    });
  }
  document.addEventListener("DOMContentLoaded", () => {
    const images = document.querySelectorAll(".product .itemBox img");
    const popup = document.getElementById("popup");
    const popupImg = document.getElementById("popup-img");
    const popupDesc = document.getElementById("popup-desc");
    const closeBtn = document.querySelector(".close-btn");

    images.forEach((img) => {
      img.addEventListener("click", () => {
        popupImg.src = img.src;

        // Keep the default text if data-desc is empty
        const desc = img.getAttribute("data-desc");
        popupDesc.textContent = desc ? desc : popupDesc.textContent;

        popup.classList.add("showPopup");
      });
    });

    closeBtn.addEventListener("click", () => {
      popup.classList.remove("showPopup");
    });

    popup.addEventListener("click", (e) => {
      if (e.target === popup) {
        popup.classList.remove("showPopup");
      }
    });
  });
}
