export function vue_gallery() {
  const app_gallery = Vue.createApp({
    created() {
      // Load all data by default
      fetch("http://localhost:8888/lumen_brothersinarms/public/gallery")
        .then((response) => response.json())
        .then((data) => {
          console.log("Fetched Gallery Data:", data);
          this.galleryData = data;
          this.filteredData = data;
          this.loadinggallery = false;
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        galleryData: [],
        filteredData: [],
        loadinggallery: true,
        activeFilter: "all",
        showPopup: false,
        selectedItem: null,
        error: "",
      };
    },
    methods: {
      filterGallery(type) {
        this.activeFilter = type;
        this.loadinggallery = true;

        let url = "http://localhost:8888/lumen_brothersinarms/public/gallery";

        if (type !== "all") {
          url += `/filter/${type}`;
        }

        fetch(url)
          .then((response) => response.json())
          .then((data) => {
            this.filteredData = data;
            this.loadinggallery = false;
          })
          .catch((error) => {
            console.error(error);
            this.error = "Failed to load filtered gallery.";
            this.loadinggallery = false;
          });
      },
      openPopup(item) {
        console.log("Popup opened with item:", item);
        this.selectedItem = item;
        this.showPopup = true;
      },
      closePopup() {
        this.showPopup = false;
        this.selectedItem = null;
      },
    },
  }).mount("#app_gallery");
}
