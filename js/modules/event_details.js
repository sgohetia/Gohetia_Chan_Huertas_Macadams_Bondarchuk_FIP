export function eventsDetails() {
  const app_eventsdetails = Vue.createApp({
    created() {
      const params = new URLSearchParams(window.location.search);
      const id = params.get("id");
      console.log(id);
      // Ideal to get your remote data during the created phase
      // fetch(`http://localhost/lumen_brothersinarms/public/events/${id}`)
      fetch(
        `https://sheldongohetia.com/projects/brothersinarms/lumen/public/events/${id}`
      )
        .then((response) => response.json())
        .then((data) => {
          if (data.length > 0) {
            console.log(data[0]);
            this.loadingeventsdetails = false;
            const events = data[0]; // grab the first (and only) item from the array
            this.eventsDetailsData = events;
            this.event_name = events.event_name || "No name";
            this.date_time = events.date_time || "";
            this.description = events.description || "";
          } else {
            this.loading = false;
            this.error = "No blog found with the given query";
          }
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        eventsDetailsData: [],
        loadingeventsdetails: true,
        error: "",
        name: "",
        campaign: "",
        ammount: "",
      };
    },
  }).mount("#app_eventsdetails");
}
