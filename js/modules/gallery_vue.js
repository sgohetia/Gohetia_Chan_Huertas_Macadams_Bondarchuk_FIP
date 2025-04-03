export function vue_gallery() {
  const app_gallery = Vue.createApp({
    created() {
      fetch("http://localhost/lumen_brothersinarms/public/gallery")
        .then((response) => response.json())
        .then((data) => {
          console.log("Fetched Gallery Data:", data); // ✅ Debug
          this.galleryData = data;
          this.filteredData = data; // ✅ Initialize correctly
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
        if (type === "all") {
          this.filteredData = this.galleryData;
        } else {
          this.filteredData.splice(
            0,
            this.filteredData.length,
            ...this.galleryData.filter(
              (item) => item.type.toLowerCase() === type.toLowerCase()
            )
          );
        }
        console.log("Filtered Data:", this.filteredData); // ✅ Debugging
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
