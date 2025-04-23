export function subscriptionsform() {
  const form = document.querySelector("#footer-form");
  const feedBack = document.querySelector("#sfeedback");

  function regForm(event) {
    //console.log("called");
    event.preventDefault();
    // const url = "http://localhost/FIP-2025/addsubscription.php";
    const url =
      "https://sheldongohetia.com/projects/brothersinarms/webpage/addsubscription.php";
    const thisform = event.currentTarget;
    //console.log(thisform.elements.lname.value);
    const formdata = "semail=" + thisform.elements.semail.value;

    console.log(formdata);

    fetch(url, {
      method: "POST",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body: formdata,
    })
      .then((response) => response.json())
      .then((responseText) => {
        console.log(responseText);
        feedBack.innerHTML = "";

        if (responseText.errors) {
          responseText.errors.forEach((error) => {
            const errorElement = document.createElement("p");
            errorElement.textContent = error;
            feedBack.appendChild(errorElement);
          });
        } else {
          form.reset();
          const messageElement = document.createElement("p");
          messageElement.textContent = responseText.message;
          feedBack.appendChild(messageElement);
        }
      })
      .catch((error) => {
        console.error(error);
        feedBack.innerHTML = "";
        const messageElement = document.createElement("p");
        messageElement.textContent =
          "Oops, something went wrong. Please try again.";
        feedBack.appendChild(messageElement);
      });
  }

  form.addEventListener("submit", regForm);
}
