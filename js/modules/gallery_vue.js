export function vue_gallery() {
  const app_gallery = Vue.createApp({
    created() {
      // Ideal to get your remote data during the created phase
      fetch("http://localhost:8888/lumen_brothersinarms/public/gallery")
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          this.galleryData = data;
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
        filteredData: [],
      };
    },
    methods: {
      filterGallery(type) {
        this.activeFilter = type;
        if (type === "all") {
          this.filteredData = this.galleryData;
        } else {
          this.filteredData = this.galleryData.filter(
            (item) => item.type === type
          );
        }
      },
      openPopup(item) {
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
