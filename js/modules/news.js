export function news() {
  const app_news = Vue.createApp({
    created() {
      // Ideal to get your remote data during the created phase
      // fetch("http://localhost/lumen_brothersinarms/public/news")
      fetch(
        "https://sheldongohetia.com/projects/brothersinarms/lumen/public/news"
      )
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          this.newsData = data.map((item, index) => ({
            ...item,
            animation: index % 2 === 0 ? "fade-up" : "fade-down",
          }));
          this.loadingnews = false;
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        newsData: [],
        loadingnews: true,
        error: "",
      };
    },
  }).mount("#app_news");
}
