export function donorsDetails() {
  const app_donorsdetails = Vue.createApp({
    created() {
      const params = new URLSearchParams(window.location.search);
      const id = params.get("id");
      console.log(id);
      // Ideal to get your remote data during the created phase
      // fetch(`http://localhost/lumen_brothersinarms/public/donors/${id}`)
      fetch(
        `https://sheldongohetia.com/projects/brothersinarms/lumen/public/donors/${id}`
      )
        .then((response) => response.json())
        .then((data) => {
          if (data.length > 0) {
            console.log(data[0]);
            this.loadingdonorsdetails = false;
            const donors = data[0]; // grab the first (and only) item from the array
            this.donorsDetailsData = donors;
            this.name = donors.name || "No name";
            this.campaign = donors.campaign || "";
            this.ammount = donors.ammount || "";
          } else {
            this.loading = false;
            this.error = "No blog found with the given query";
          }
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        donorsDetailsData: [],
        loadingdonorsdetails: true,
        error: "",
        name: "",
        campaign: "",
        ammount: "",
      };
    },
  }).mount("#app_donorsdetails");
}
