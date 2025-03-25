export function searchBar() {
  const app = Vue.createApp({
    data() {
      return {
        isSearchOpen: false,
        query: "",
        errorMessage: "",
        sectionMap: {
          history: "history.php#history",
          "about us": "#about",
          donate: "#donate",
          blog: "#blog",
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
          window.location.href = this.sectionMap[searchTerm]; // Redirect to section
          this.toggleSearchBar(false); // Close search bar
        } else {
          this.errorMessage = "Section not found. Try again!"; // Show error in input
          this.query = ""; // Clear input text

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
