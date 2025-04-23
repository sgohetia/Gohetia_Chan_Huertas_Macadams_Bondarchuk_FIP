export function vue_gallery() {
  const app_gallery = Vue.createApp({
    data() {
      return {
        galleryData: [],
        filteredData: [],
        loadinggallery: true,
        activeFilter: "all",
        showPopup: false,
        selectedItem: { fname: "", fname_alt: "", description: "" }, // Empty default
        error: "",
      };
    },
    created() {
      this.fetchGalleryData();
    },
    methods: {
      async fetchGalleryData(filter = "all") {
        try {
          this.loadinggallery = true;
          // let url = "http://localhost/lumen_brothersinarms/public/gallery";
          let url =
            "https://sheldongohetia.com/projects/brothersinarms/lumen/public/gallery";

          if (filter !== "all") {
            url += `/filter/${filter}`;
          }

          const response = await fetch(url);
          if (!response.ok) throw new Error("Failed to fetch gallery data");

          const data = await response.json();
          this.galleryData = filter === "all" ? data : this.galleryData;
          this.filteredData = data;
        } catch (error) {
          console.error("Fetch error:", error);
          this.error = "Failed to load gallery data.";
        } finally {
          this.loadinggallery = false;
        }
      },
      filterGallery(type) {
        this.activeFilter = type;
        this.fetchGalleryData(type);
      },
      openPopup(item) {
        console.log("Clicked item:", item);
        this.selectedItem = item;
        this.showPopup = true;
        console.log("Popup state:", this.showPopup);
      },
      closePopup() {
        this.showPopup = false;
        this.selectedItem = { fname: "", fname_alt: "", description: "" };
      },
    },
  }).mount("#app_gallery");
}
