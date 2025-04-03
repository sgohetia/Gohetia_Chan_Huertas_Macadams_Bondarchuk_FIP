export function newsDetails() {
  const app_newsdetails = Vue.createApp({
    created() {
      const params = new URLSearchParams(window.location.search);
      const id = params.get("id");
      console.log(id);
      // Ideal to get your remote data during the created phase
      fetch(`http://localhost/lumen_brothersinarms/public/news/${id}`)
        .then((response) => response.json())
        .then((data) => {
          if (data.length > 0) {
            console.log(data[0]);
            this.loadingnewsdetails = false;
            const news = data[0]; // grab the first (and only) item from the array

            this.newsDetailsData = news;
            this.title = news.title || "No title";
            this.sub_title = news.sub_title || "";
            this.message = news.content || "No content";
            this.image_file2 = news.image_file2 || "";
            this.image_alt2 = news.image_alt2 || "news image";
          } else {
            this.loading = false;
            this.error = "No blog found with the given query";
          }
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        newsDetailsData: [],
        loadingnewsdetails: true,
        error: "",
        title: "",
        sub_title: "",
        message: "",
        image_file2: "",
        image_alt2: "",
      };
    },
  }).mount("#app_newsdetails");
}
