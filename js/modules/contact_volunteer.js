export function contactvolunteerform() {
  const form = document.querySelector("#volunteerForm");
  const feedBack = document.querySelector("#vfeedback");

  function regForm(event) {
    //console.log("called");
    event.preventDefault();
    // calling to the php file on the server. We can do this because HTML and JS, run client-side. This also works becasue we have enabled CORS in the PHP file. This allows any domain to access our php file. This is okay for testing but not for production.
    const url =
      "https://sheldongohetia.com/projects/brothersinarms/webpage/addcontactvolunteer.php";
    const thisform = event.currentTarget;
    //console.log(thisform.elements.lname.value);
    const formdata =
      "vfname=" +
      thisform.elements.vfname.value +
      "&vlname=" +
      thisform.elements.vlname.value +
      "&vemail=" +
      thisform.elements.vemail.value +
      "&gender=" +
      thisform.elements.gender.value +
      "&vage=" +
      thisform.elements.vage.value +
      "&vskills=" +
      thisform.elements.vskills.value +
      "&vmessage=" +
      thisform.elements.vmessage.value;
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
