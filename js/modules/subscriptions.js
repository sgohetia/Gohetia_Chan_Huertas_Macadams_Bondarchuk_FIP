export function subscriptionsform() {
  const form = document.querySelector("#footer-form");
  const feedBack = document.querySelector("#sfeedback");

  function regForm(event) {
    //console.log("called");
    event.preventDefault();
    // calling to the php file on the server. We can do this because HTML and JS, run client-side. This also works becasue we have enabled CORS in the PHP file. This allows any domain to access our php file. This is okay for testing but not for production.
    const url =
      "http://localhost:8888/Gohetia_Chan_Huertas_Macadams_Bondarchuk_FIP/addsubscription.php";
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
