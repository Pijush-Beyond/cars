<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/2a5b8fb2dc.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://x0-002.github.io/cs/css/mian.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <title>Document</title>
</head>

<body class="overflow-x-hidden">
  <!-- navigation bar -->
  <jsp:include page="/nav.jsp"/>

  <main class="pt-4_125rem min-vh-100 d-flex align-items-center flex-column">
    <div class="w-100 w-sm-75 w-lg-50 px-3 px-sm-0 py-5 d-flex align-items-start justify-content-evenly justify-content-sm-center h-fit-content">
      <div class="me-3 me-lg-5 me-md-4 w-fit-content align-self-center">
        <div class="text-muted form-label text-capitalize">Type</div>
        <div class="d-flex fex-column flex-sm-row align-items-center">${type}</div>
      </div>
      <div class="me-3 me-lg-5 me-md-4">
        <div class="text-muted form-label text-capitalize">form - to</div>
        <div class="d-flex flex-column flex-sm-row align-items-center text-capitalize">
          <div>${pickup}</div>
          <div class="text-center d-none d-sm-block">&nbsp;-&nbsp;</div>
          <div class="text-center d-sm-none">|</div>
          <div>${dropoff}</div>
        </div>
      </div>
      <div class="me-3 me-lg-5 me-md-4">
        <div class="text-muted form-label text-capitalize">Time</div>
        <div class="d-flex flex-column flex-sm-row align-items-center text-capitalize">
          <div>${pickupDate}</div>
          <div class="text-center d-none d-sm-block">&nbsp;-&nbsp;</div>
          <div class="text-center d-sm-none">|</div>
          <div>${dropoffDate}</div>
        </div>
      </div>
      <a href="/search?${queryString}" class="btn btn-outline-warning align-self-center"><i class="fas fa-pencil-alt"></i></a>
    </div>
    <div class="result-grid w-100 grid-gap-4 px-5 mb-5" style="max-width: 1500px;">

      <c:if test="${cars.isEmpty()}">
        <div class="d-flex flex-warp align-items-center justify-content-center" style="grid-column: 1/ 5">
          <img src="https://x0-002.github.io/cs/icons/sad.gif" class="rounded-circle me-2" style="width:40px;">
          <bold>We are sorry.</bold>
        </div>
      </c:if>
      <c:forEach var="car" items="${cars}">
        <div class="bg-light overflow-hidden rounded-3 position-relative shadow shadow-lg-hover shadow-lg-focus aos-init" data-aos="fade-up">
          <img src="https://x0-002.github.io/cs${car.images.get(0).url}" class="w-100 object-cover mb-3" style="height:200px">
          <div class="px-4 mb-3">
            <div class="mb-2">
              <h4 class="fw-normal">${car.name}</h4>
            </div>
            <div class="mb-3">
              <h4 class="text-warning">$${car.price}</h4>
            </div>
            <a href="/details/${car.car_id}?${queryString}" class="btn btn-outline-success w-100">Details</a>
          </div>
          <div class="position-absolute top-0 end-0" style="z-index: 1; transform: rotateZ(45deg) translate(25%, -25%); background-color: rgba(255, 255, 255, 0.919)">
            <div class="text-warning border-start border-end px-5 fs-6" style="border-style: dotted; border-color: gray;">avaliable</div>
          </div>
        </div>
      </c:forEach>


      <%-- <div class="bg-light overflow-hidden rounded-3 position-relative shadow shadow-lg-hover shadow-lg-focus aos-init opacity-d8" data-aos="fade-up">
        <img src="https://x0-002.github.io/cs/images/car.jpeg" class="w-100 object-cover mb-3" style="height:200px">
        <div class="px-4 mb-3">
          <div class="mb-2">
            <h4 class="fw-normal">Suv</h4>
          </div>
          <div class="mb-3">
            <h4 class="text-warning">$10</h4>
          </div>
          <a href="/details" class="btn btn-outline-success w-100 disabled">Details</a>
        </div>
        <div class="position-absolute top-0 end-0" style="z-index: 1; transform: rotateZ(45deg) translate(25%, -25%); background-color: rgba(255, 255, 255, 0.919)">
          <div class="text-warning border-start border-end px-5 fs-6" style="border-style: dotted; border-color: gray;">not avaliable</div>
        </div>
      </div> --%>
    </div>
  </main>

  <footer class="bg-dark text-white d-flex justify-content-center py-5 justify-content-evenly flex-wrap">
    <div>
      <div class="d-flex align-items-center mb-4">
        <i class="fab fa-github fs-1 me-3"></i>
        <a href="#" class="text-white text-underline-transition text-decoration-none border-white h-fit-content"
          style="--text-underline-color:white">github</a>
      </div>
      <div class="d-flex align-items-center">
        <i class="fab fa-linkedin-in fs-1 text-primary me-3"></i>
        <a href="#" class="text-white text-underline-transition text-decoration-none border-white h-fit-content"
          style="--text-underline-color:white">Linkdn</a>
      </div>
    </div>
    <div>
      <a class="navbar-brand ps-1" href="/">
        <img src="https://x0-002.github.io/cs/icons/logo.png" style="width:2.5rem">
      </a>
    </div>
    <div class="text-center text-white pt-4 flex-basis-100">
      @All rights reserved.
    </div>
  </footer>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="https://x0-002.github.io/cs/slider.min.js"></script>
  <script src="https://x0-002.github.io/cs/index.js"></script>
</body>

</html>