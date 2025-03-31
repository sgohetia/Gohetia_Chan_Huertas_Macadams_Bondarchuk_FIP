export function donor() {
  const appdonor = Vue.createApp({
    created() {
      // Ideal to get your remote data during the created phase
      fetch("http://localhost:8888/lumen_brothersinarms/public/donors")
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          this.donorsData = data;
          this.loadingdonors = false;
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        donorsData: [],
        loadingdonors: true,
        error: "",
      };
    },
  }).mount("#appdonor");
}
