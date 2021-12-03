<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/2a5b8fb2dc.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://x0-002.github.io/cs/css/mian.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <title>Car Rent</title>
</head>
<body class="overflow-x-hidden">
  <!-- navigation bar -->
  <jsp:include page="./indexNav.jsp"/>

  <!-- banner -->
  <section id="front" class="position-relative d-flex align-center align-items-center align-items-lg-start justify-content-start justify-content-lg-center flex-column px-0 px-lg-home1" style="height:100vh;padding-top:4.125rem">
    <div class="d-flex justify-content-center align-center align-items-center fs-1 fw-bolder mb-4 pt-4_125rem pt-lg-0">
      You Can &nbsp;
      <span id="banner-text" class="overflow-visible d-inline-block text-capitalize" style="white-space: nowrap;">
        <span style="color: red" data-slidr="1">Rent A Electric Car.</span>
        <span style="color: white" data-slidr="2">Rent A Sedan.</span>
        <span style="color: #1e09c3" data-slidr="3">Rent A SUV.</span>
      </span>
    </div>
    <form id="book-form" action="/search" class="d-flex justify-content-center align-center flex-column flex-lg-row mb-0 needs-custom-validation" novalidate>
      <div class="position-relative pt-2 pt-lg-0 px-3 px-lg-0">
        <input name="pickup" type="text" class="form-control text-center" style="border-radius: 1.5rem;padding-left: 2rem"
          placeholder="Your Pick-up Point" list="datalistOptions" pattern="Swanston Street|Dawson street|Cardigan Street|McKimmies Rd,Bundoora|East Bendigo Vic 3550" required>
        <div class="invalid-feedback position-absolute top-100 text-center text-lg-start start-0 ps-lg-2">Sorry we don't Provide at your location</div>
        <datalist id="datalistOptions">
          <option value="Swanston Street">Swanston Street</option>
          <option value="Dawson street">Dawson street</option>
          <option value="Cardigan Street">Cardigan Street</option>
          <option value="McKimmies Rd,Bundoora">McKimmies Rd,Bundoora</option>
          <option value="East Bendigo Vic 3550">East Bendigo Vic 3550</option>
        </datalist>
      </div>


      <button type="submit" class="align-self-center w-fit-content btn mt-5 mt-lg-0 p-0 px-4">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70.66 68.95" style="width:2rem;">
          <path style="fill:none;stroke:#fff;stroke-width:3px;"
            d="M30.27,5.92l3.35-3.36a3.62,3.62,0,0,1,5.11,0h0L68.1,31.91a3.6,3.6,0,0,1,0,5.1v0L38.74,66.39a3.6,3.6,0,0,1-5.1,0h0L30.27,63a3.63,3.63,0,0,1,0-5.13l0,0,18.2-17.33H5.13A3.62,3.62,0,0,1,1.5,36.91V32.06a3.63,3.63,0,0,1,3.61-3.63H48.53L30.33,11.1A3.6,3.6,0,0,1,30.18,6Z" />
          <path style="fill:none;stroke:rgb(233, 191, 21);stroke-width:3px;" class="animated-path"
            d="M30.27,5.92l3.35-3.36a3.62,3.62,0,0,1,5.11,0h0L68.1,31.91a3.6,3.6,0,0,1,0,5.1v0L38.74,66.39a3.6,3.6,0,0,1-5.1,0h0L30.27,63a3.63,3.63,0,0,1,0-5.13l0,0,18.2-17.33H5.13A3.62,3.62,0,0,1,1.5,36.91V32.06a3.63,3.63,0,0,1,3.61-3.63H48.53L30.33,11.1A3.6,3.6,0,0,1,30.18,6Z" />
        </svg>
      </button>
    </form>
    <section id="banner" class="top-0 end-0 bottom-0 start-0 position-absolute" style="z-index: -1;">
      <img data-slidr="1" src="https://x0-002.github.io/cs/images/car.jpeg" class="w-100 h-100 object-cover" alt="">
      <img data-slidr="2" src="https://x0-002.github.io/cs/images/sedan.jpg" class="w-100 h-100 object-cover" alt="">
      <img data-slidr="3" src="https://x0-002.github.io/cs/images/suv.jpg" class="w-100 h-100 object-cover" alt="">
    </section>

    <i class="fas fa-chevron-down position-absolute fs-1 text-white up-down-wave-animation cursor-pointer" style="z-index:1; bottom: 10%; left: 50%; transform: translateX(-50%);" onClick="document.getElementById('rest').scrollIntoView()"></i>
  </section>

  <section id="rest">
    <!-- places for service -->
    <section>
      <h1 class="text-center my-5 py-5" data-aos="fade-up"><span class="text-letter-up-down-transition text-underline-transition text-brown-red" style="--text-underline-width: 3px; --text-underline-color: #be8781;--text-underline-bottom: -4px;">Our Service Available</span></h1>
      <div class="d-flex justify-content-center align-items-center mb-5 flex-lg-row flex-column">
        <div class="overflow-hidden me-0 me-lg-4 mb-5 mb-lg-0 w-75 w-md-35 minw-md-350 position-relative zoom-in-transition" data-aos="slide-left">
          <img src="https://x0-002.github.io/cs/images/place-1.jpg" class="w-100 object-contain transition">
          <%-- <div class="fs-2 position-absolute top-0 start-0 bottom-0 end-0 d-flex justify-content-center align-items-center text-white mix-blend-mode-difference text-fade-away-transition">Swanston Street</div> --%>
        </div>
        <div class="overflow-hidden w-75 w-md-35 minw-md-350 position-relative zoom-in-transition" data-aos="slide-right">
          <img src="https://x0-002.github.io/cs/images/place-2.jpeg" class="w-100 object-contain transition">
          <%-- <div class="fs-2 position-absolute top-0 start-0 bottom-0 end-0 d-flex justify-content-center align-items-center  text-white mix-blend-mode-difference text-fade-away-transition">Swanston Street</div> --%>
        </div>
      </div>
    </section>

    <!-- offering of website -->
    <section>
      <h1 class="text-center my-5 py-5" data-aos="fade-up"><span class="text-letter-up-down-transition text-underline-transition text-brown-red" style="--text-underline-width: 3px; --text-underline-color: #be8781;--text-underline-bottom: -4px;">We Offer Best Deal In Every-way</span></h1>
      <div class="d-flex justify-content-center align-items-center mb-5" data-aos="slide-left">
        <div class="w-75 w-md-35 minw-md-350 border border-brown-red border-2 rounded-2 overflow-hidden zoom-in-transition position-relative">
          <img src="https://x0-002.github.io/cs/images/reliable.jpg" alt="" class="w-100 object-contain transition">
          <div class="fs-2 fw-bold text-white position-absolute d-flex d-md-none top-0 start-0 bottom-0 end-0 justify-content-center align-items-center" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px"><span class="text-underline-transition mix-blend-mode-difference">Reliable</span></div>
        </div>
        <div class="position-relative d-none d-md-block flex-basis-30 ps-md-7vw" data-aos="fade-right" data-aos-delay="300">
          <span class="text-underline-transition d-inline-block fs-2 fw-bold text-muted" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px">Reliable</span>
          <div>
            Reliablity is your responsibility and we full-fill it no matter what of cost.
          </div>
        </div>
      </div>
      <div class="d-flex justify-content-center align-items-center my-5" data-aos="slide-right">
        <div class="w-75 w-md-35 minw-md-350 border border-brown-red border-2 rounded-2 overflow-hidden zoom-in-transition position-relative">
          <img src="https://x0-002.github.io/cs/images/support.jpg" alt="" class="w-100 object-contain transition">
          <div class="fs-2 fw-bold text-white position-absolute d-flex d-md-none top-0 start-0 bottom-0 end-0 justify-content-center align-items-center" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px"><span class="text-underline-transition mix-blend-mode-difference">24x7 support</span></div>
        </div>
        <div  class="position-relative d-none d-md-block flex-basis-30 ps-md-7vw" data-aos="fade-left" data-aos-delay="300">
          <span class="text-underline-transition d-inline-block fs-2 fw-bold text-muted" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px">24x7 support</span>
          <div>
            We at 24x7 TechSupport specialize in providing support to individual consumers with reliable and cost-effective solutions.
          </div>
        </div>
      </div>
      <div class="d-flex justify-content-center align-items-center mb-5" data-aos="slide-left">
        <div class="w-75 w-md-35 minw-md-350 border border-brown-red border-2 rounded-2 overflow-hidden zoom-in-transition position-relative">
          <img src="https://x0-002.github.io/cs/images/budget-friendly.jpg" alt="" class="w-100 object-contain transition">
          <div class="fs-2 fw-bold text-white position-absolute d-flex d-md-none top-0 start-0 bottom-0 end-0 justify-content-center align-items-center" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px"><span class="text-underline-transition mix-blend-mode-difference">Budget Friendly</span></div>
        </div>
        <div  class="position-relative d-none d-md-block flex-basis-30 ps-md-7vw" data-aos="fade-right" data-aos-delay="300">
          <span class="text-underline-transition d-inline-block fs-2 fw-bold text-muted" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px">Budget Friendly</span>
          <div>
            Our service is one of the most affordable. So don't worry about your budget. Let us take care of it.
          </div>
        </div>
      </div>
      
      <h1 class="text-center my-5 py-5" data-aos="fade-up">
        <span class="text-letter-up-down-transition text-underline-transition text-brown-red" style="--text-underline-width: 3px; --text-underline-color: #be8781;--text-underline-bottom: -4px;">We Love To Serve</span>
      </h1>
      <div class="d-flex justify-content-center align-items-center mb-5" data-aos="slide-right">
        <div class="w-75 w-md-35 minw-md-350 border border-brown-red border-2 rounded-2 overflow-hidden zoom-in-transition position-relative">
          <img src="https://x0-002.github.io/cs/images/seat-belt.jpeg" alt="" class="w-100 object-contain transition">
          <div class="fs-2 fw-bold text-white position-absolute d-flex d-md-none top-0 start-0 bottom-0 end-0 justify-content-center align-items-center" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px"><span class="text-underline-transition mix-blend-mode-difference">Journey Safe</span></div>
        </div>
        <div  class="position-relative d-none d-md-block flex-basis-30 ps-md-7vw" data-aos="fade-left" data-aos-delay="300">
          <span class="text-underline-transition d-inline-block fs-2 fw-bold text-muted" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px">Journey Safe</span>
          <div>
            We run multiple test each time before our customer get thier car.
          </div>
        </div>
      </div>
      <div class="d-flex justify-content-center align-items-center my-5" data-aos="slide-left">
        <div class="w-75 w-md-35 minw-md-350 border border-brown-red border-2 rounded-2 overflow-hidden zoom-in-transition position-relative">
          <img src="https://x0-002.github.io/cs/images/discover.jpg" alt="" class="w-100 object-contain transition">
          <div class="fs-2 fw-bold text-white position-absolute d-flex d-md-none top-0 start-0 bottom-0 end-0 justify-content-center align-items-center" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px"><span class="text-underline-transition mix-blend-mode-difference">Discover More</span></div>
        </div>
        <div  class="position-relative d-none d-md-block flex-basis-30 ps-md-7vw" data-aos="fade-right" data-aos-delay="300">
          <span class="text-underline-transition d-inline-block fs-2 fw-bold text-muted" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px">Discover More</span>
          <div>
            Discover more that are undiscovered. We get your back.
          </div>
        </div>
      </div>
      <div class="d-flex justify-content-center align-items-center mb-5" data-aos="slide-right">
        <div class="w-75 w-md-35 minw-md-350 border border-brown-red border-2 rounded-2 overflow-hidden zoom-in-transition position-relative">
          <img src="https://x0-002.github.io/cs/images/reach-to-loved-one.jpg" alt="" class="w-100 object-contain transition">
          <div class="fs-2 fw-bold text-white position-absolute d-flex d-md-none top-0 start-0 bottom-0 end-0 justify-content-center align-items-center" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px"><span class="text-underline-transition mix-blend-mode-difference">Reach To Loved One</span></div>
        </div>
        <div class="position-relative d-none d-md-block flex-basis-30 ps-md-7vw" data-aos="fade-right" data-aos-delay="300">
          <span class="text-underline-transition d-inline-block fs-2 fw-bold text-muted" style="--text-underline-color:gray;transform-origin: left center; --text-underline-width: 2px">Reach To Loved One</span>
          <div>
            Take a break and reach you to your family and friends - Loved ones with us.
          </div>
        </div>
      </div>
    </section>
  
    <!-- customer review section -->
    <section class="d-flex justify-content-center align-items-center flex-column" data-aos="fade-up">
      <h2 class="my-5 pt-5 w-75 w-md-50 text-muted" data-aos="fade-left"><span class="name-right-line">Our Coustomrs</span></h2>
      <div class="d-flex justify-content-center align-items-center flex-column" id="review">
        <div class="d-flex align-items-center justify-content-cemter flex-column flex-md-row w-75vw w-md-50vw" data-slidr="1">
          <img src="https://x0-002.github.io/cs/images/random-face1.jpg" alt="" class="object-cover rounded-circle w-5rem me-md-5 me-0 mb-3 mb-md-0">
          <div>
            <em class="text-center text-md-center fw-light">
              great price, service and very convenient.the car was clean and worked fine. It was great car rental experience.
            </em>
            <h4 class="text-end fw-normal"><em class="name-line">Amelia</em></h4>
          </div>
        </div>
        <div class="d-flex align-items-center justify-content-cemter flex-column flex-md-row w-75vw w-md-50vw" data-slidr="2">
          <img src="https://x0-002.github.io/cs/images/random-face2.jpg" alt="" class="object-cover rounded-circle w-5rem me-md-5 me-0 mb-3 mb-md-0">
          <div>
            <em class="text-center text-md-center fw-light">
              nice trip thanks, enjoy sevice good driver and comfortable car. I will refer again and again to friend overall enjoy good keep it up.
            </em>
            <h4 class="text-end fw-normal"><em class="name-line">Oliver</em></h4>
          </div>
        </div>
        <div class="d-flex align-items-center justify-content-cemter flex-column flex-md-row w-75vw w-md-50vw" data-slidr="3">
          <img src="https://x0-002.github.io/cs/images/random-face3.jpg" alt="" class="object-cover rounded-circle w-5rem me-md-5 me-0 mb-3 mb-md-0">
          <div>
            <em class="text-center text-md-center fw-light">
              Tony did a phenomenal job accommodating our reservation. He went above and beyond to make sure we had a great trip. The pickup instructions were fast and easy. The rental van was clean and spacious! We had a party of 11 and there was plenty of room with luggage. I would highly recommend United Van Rentals and I will definitely use them again for any future trips to Las Vegas, NV. Thanks again Tony!
            </em>
            <h4 class="text-end fw-normal"><em class="name-line">Isla</em></h4>
          </div>
        </div>
        <div class="d-flex align-items-center justify-content-cemter flex-column flex-md-row w-75vw w-md-50vw" data-slidr="4">
          <img src="https://x0-002.github.io/cs/images/random-face4.jpg" alt="" class="object-cover rounded-circle w-5rem me-md-5 me-0 mb-3 mb-md-0">
          <div>
            <em class="text-center text-md-center fw-light">
              he price was reasonable for the car I got and time I rented it for. The staff were friendly and efficient. I didn\'t have to wait a long period of time. Would definitely rent from here again!
            </em>
            <h4 class="text-end fw-normal"><em class="name-line">William</em></h4>
          </div>
        </div>
      </div>
    </section>
  
    <!-- page end book button -->
    <section name="last-book-button" class="pt-5">
      <a href="/search" class="d-flex align-items-center justify-content-center w-100 py-3" style="background-image: linear-gradient(#cca19e,#686868);">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70.66 68.95" style="width:2.5rem;" id="book-arrow">
          <path style="fill:none;stroke:#fff;stroke-width:3px;"
            d="M30.27,5.92l3.35-3.36a3.62,3.62,0,0,1,5.11,0h0L68.1,31.91a3.6,3.6,0,0,1,0,5.1v0L38.74,66.39a3.6,3.6,0,0,1-5.1,0h0L30.27,63a3.63,3.63,0,0,1,0-5.13l0,0,18.2-17.33H5.13A3.62,3.62,0,0,1,1.5,36.91V32.06a3.63,3.63,0,0,1,3.61-3.63H48.53L30.33,11.1A3.6,3.6,0,0,1,30.18,6Z" />
          <path style="fill:none;stroke:rgb(233, 191, 21);stroke-width:3px;" class="animated-path"
            d="M30.27,5.92l3.35-3.36a3.62,3.62,0,0,1,5.11,0h0L68.1,31.91a3.6,3.6,0,0,1,0,5.1v0L38.74,66.39a3.6,3.6,0,0,1-5.1,0h0L30.27,63a3.63,3.63,0,0,1,0-5.13l0,0,18.2-17.33H5.13A3.62,3.62,0,0,1,1.5,36.91V32.06a3.63,3.63,0,0,1,3.61-3.63H48.53L30.33,11.1A3.6,3.6,0,0,1,30.18,6Z" />
        </svg>
      </a>
    </section>
  
    <footer class="bg-dark text-white d-flex justify-content-center py-5 justify-content-evenly flex-wrap">
      <div>
        <div class="d-flex align-items-center mb-4">
          <i class="fab fa-github fs-1 me-3"></i>
          <a href="#" class="text-white text-underline-transition text-decoration-none border-white h-fit-content" style="--text-underline-color:white">github</a>
        </div>
        <div class="d-flex align-items-center">
          <i class="fab fa-linkedin-in fs-1 text-primary me-3"></i>
          <a href="#" class="text-white text-underline-transition text-decoration-none border-white h-fit-content" style="--text-underline-color:white">Linkdn</a>
        </div>
      </div>
      <a class="navbar-brand ps-1 d-flex align-items-center" href="/">
        <img src="https://x0-002.github.io/cs/icons/logo.png" style="width:1.5rem">
        <span class="ms-1 fs-3" style="color: #000a4A; font-family: sarif;">RMIT</span>
      </a>
      <div class="text-center text-white pt-4 flex-basis-100">
        2021 @ All rights reserved.
      </div>
    </footer>
  </section>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="https://x0-002.github.io/cs/slider.min.js"></script>
  <script src="https://x0-002.github.io/cs/index.js"></script>
</body>
</html>