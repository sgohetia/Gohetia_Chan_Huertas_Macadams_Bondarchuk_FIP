export function searchBar() {
  const app = Vue.createApp({
    data() {
      return {
        isSearchOpen: false,
        query: "",
        errorMessage: "",
        sectionMap: {
          history: "history.php#history",
          "about us": "index.php#about",
          about: "#about",
          about: "index.php#about",
          donate: "#donate",
          blog: "blogs.html",
          contact: "contactform.html",
          "soldiers letters": "soldiers-letter.html#letter",
          letters: "soldiers-letter.html#letter",
          memorial: "memorial.html",
        },
      };
    },
    computed: {
      searchBarStyle() {
        return {
          height: this.isSearchOpen ? "100vh" : "0",
          borderRadius: this.isSearchOpen ? "0" : "100% 100% 0 0",
        };
      },
    },
    methods: {
      toggleSearchBar(open) {
        this.isSearchOpen = open;
        if (!open) this.errorMessage = ""; // Clear error when closing
      },
      search() {
        const searchTerm = this.query.trim().toLowerCase();
        if (this.sectionMap[searchTerm]) {
          window.location.href = this.sectionMap[searchTerm];
          this.toggleSearchBar(false);
        } else {
          this.errorMessage = "Section not found. Try again!";
          this.query = "";

          // Clear error message after 2 seconds
          setTimeout(() => {
            this.errorMessage = "";
          }, 2000);
        }
      },
    },
  });

  const vm = app.mount("#app");

  document
    .querySelector("#openSearchBarBtn")
    .addEventListener("click", () => vm.toggleSearchBar(true));
}
