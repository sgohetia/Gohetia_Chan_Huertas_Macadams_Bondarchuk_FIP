export function donorTotal() {
  const appdonorTotal = Vue.createApp({
    created() {
      // Ideal to get your remote data during the created phase
      // fetch("http://localhost/lumen_brothersinarms/public/donors/total")
      fetch(
        "https://sheldongohetia.com/projects/brothersinarms/lumen/public/donors/total"
      )
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          console.log("Donor total:", data);
          this.totalAmount = data.total;
          this.targetProgress = Math.round(
            (this.totalAmount / this.donationGoal) * 100
          );
          console.log("Target progress:", this.targetProgress);
          this.loadingprogress = false;
          this.animateProgress();
        })
        .catch((error) => console.error(error));
    },
    methods: {
      animateProgress() {
        const interval = setInterval(() => {
          if (this.currentProgress >= this.targetProgress) {
            clearInterval(interval);
          } else {
            this.currentProgress++;
          }
        }, 20);
      },
    },
    data() {
      return {
        donationGoal: 1000,
        progressBar: null,
        targetProgress: 0,
        totalAmount: 0,
        progress: 0,
        currentProgress: 0,
        loadingprogress: true,
        error: "",
      };
    },
  }).mount("#appdonorTotal");
}
