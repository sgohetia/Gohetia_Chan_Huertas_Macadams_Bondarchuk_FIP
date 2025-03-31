<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Brothers in Arms</title>
    <link
      rel="shortcut icon"
      href="../images/brothers-in-arms-logo.png"
      type="image/x-icon"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.min.css"
    />
    <link
      href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />

    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/grid.css" />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"
    ></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/ScrollTrigger.min.js"
    ></script>
    <script
      defer
      src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollToPlugin.min.js"
    ></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"
    ></script>

    <script defer src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script defer type="module" src="../js/donor_details.js"></script>
  </head>
<body>

<section class=" edit-con grid-con" >
    <div class="edit col-span-full m-col-start-2 m-col-end-12 l-col-start-2 l-col-end-12" >

    <h1>Edit Donor</h1>
<p>Please edit the donor.<br></p>
<div id="app_donorsdetails">
<div v-if="loadingdonorsdetails">
    <img src="../images/loader.svg" alt="loading indicator" class="loader" />
  </div>
<form class="edit-form" action="http://localhost:8888/lumen_brothersinarms/public/donors/edit/' + donorsDetailsData.id" method="POST">
<input name="pk" type="hidden" :value="donorsDetailsData.id">
<label for="name">Name: </label>
      <input name="name" type="text" :value="donorsDetailsData.name" required /><br /><br />

      <label for="campaign">Campaign: </label>
      <input name="campaign" type="text" :value="donorsDetailsData.campaign" required /><br /><br />

      <label for="amount">Amount: </label>
      <input name="amount" type="text" :value="donorsDetailsData.amount" required /><br /><br />
    <input class="cntct-btn" name="submit" type="submit" value="Edit">
</form>
</div>
</div>
</section>

</body>
</html>
