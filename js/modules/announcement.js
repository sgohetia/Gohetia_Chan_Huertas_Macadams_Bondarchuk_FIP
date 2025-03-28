export function announcement() {
  const app1 = Vue.createApp({
    created() {
      // Ideal to get your remote data during the created phase
      fetch("http://localhost:8888/lumen_brothersinarms/public/announcements")
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          this.announcementsData = data.map((item, index) => ({
            ...item,
            animation: index % 2 === 0 ? "fade-up" : "fade-down",
          }));
          this.loadingannouncements = false;
        })
        .then(() => {
          gsap.registerPlugin(ScrollTrigger);

          gsap.from("#app1 .header-card", {
            opacity: 0,
            y: 100,
            duration: 1,
            stagger: 0.3,
            scrollTrigger: {
              trigger: "#app1 .header-card",
              start: "top 80%",
              toggleActions: "play none none reverse",
            },
          });
        })
        .catch((error) => console.error(error));
    },
    data() {
      return {
        announcementsData: [],
        loadingannouncements: true,
      };
    },
  }).mount("#app1");
}
