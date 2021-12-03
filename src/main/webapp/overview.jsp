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

  <main class="pt-4_125rem min-vh-100 align-items-center d-flex flex-column px-4">
    <img src="https://x0-002.github.io/cs/icons/driver.png" style="width:100px" class="m-3">
    <h4 class="fw-bold text-center text-Capitalize">${name} <i class="far fa-edit text-decoration-none ps-2 btn btn-link text-muted" title="comming soon"></i></h4>
    <div class="d-flex justify-content-between px-3 pt-4 w-100">
      <span class="text-muted fw-bold">Up Comming Booking</span>
      <c:if test="${upcomming.size()>0}">
        <a href="/upcommingBookings" class="text-decoration-none d-none d-md-inline">All</a>
      </c:if>
    </div>

    <hr class="w-100 mt-2">
    <div class="result-grid w-100" data-aos="fade-up">
      <c:forEach var="cb" items="${upcomming}"> 
        <a href="/bookingDetails/${cb.booking_id}" class="d-block text-decoration-none mb-3 mb-md-0 me-0 me-md-3 bg-light overflow-hidden rounded-3 position-relative shadow shadow-lg-hover shadow-lg-focus aos-init b-mb-4 pe-mb-3" >
          <img src="https://x0-002.github.io/cs${cb.car.images.get(0).url}" class="w-100 object-cover mb-3" style="height:200px">
          <div class="px-4 mb-3">
            <div class="mb-2">
              <h4 class="fw-normal text-body">${cb.car.name}</h4>
            </div>
            <div class="mb-3 text-decoration-none d-flex justify-content-between flex-warp fw-bold form-label text-body">
              <div class="pe-3"><span class="text-muted">Pick-up date - </span> <span>${cb.pickupDate}</span></div>
              <div class="pe-3"><span class="text-muted">Duration - </span> <span>${cb.dayCount}days</span></div>
              <div><span class="text-muted">From - </span> <span>${cb.pickup}</span></div>
            </div>
          </div>
          <div class="position-absolute top-0 end-0" style="z-index: 1; transform: rotateZ(45deg) translate(25%, -25%); background-color: rgba(255, 255, 255, 0.919)">
            <div class="text-warning border-start border-end px-5 fs-6" style="border-style: dotted; border-color: gray;">up-comming</div>
          </div>
        </a>
      </c:forEach>

      <c:if test="${upcomming.size()<1}">
        <div class="w-100 py-5 mt-4 d-flex justify-content-center" style="grid-column: 1 / 5;">No up comming booking found</div>
      </c:if>
      <c:if test="${upcomming.size()>0}">
        <a href="/upcommingBookings" class="text-decoration-none d-md-none align-self-end pe-4" style="justify-self: end;">All</a>
      </c:if>
    </div>

    <div class="d-flex justify-content-between px-3 pt-4 w-100">
      <span class="text-muted fw-bold">History</span>
      <c:if test="${history.size()>0}">
        <a href="/history" class="text-decoration-none d-none d-md-inline">All</a>
      </c:if>
    </div>

    <hr class="w-100 mt-2">
    <div class="result-grid w-100 pb-3" data-aos="fade-up">
      <c:forEach var="cb" items="${history}"> 
        <a href="/bookingDetails/${cb.booking_id}" class="d-block text-decoration-none mb-3 mb-md-0 me-0 me-md-3 bg-light overflow-hidden rounded-3 position-relative shadow shadow-lg-hover shadow-lg-focus aos-init b-mb-4 pe-mb-3">
          <img src="https://x0-002.github.io/cs${cb.car.images.get(0).url}" class="w-100 object-cover mb-3" style="height:200px">
          <div class="px-4 mb-3">
            <div class="mb-2">
              <h4 class="fw-normal text-body">${cb.car.name}</h4>
            </div>
            <div class="mb-3 text-decoration-none d-flex justify-content-between flex-warp fw-bold form-label text-body">
              <div class="pe-3"><span class="text-muted">Pick-up date - </span> <span>${cb.pickupDate}</span></div>
              <div class="pe-3"><span class="text-muted">Duration - </span> <span>${cb.dayCount}days</span></div>
              <div><span class="text-muted">From - </span> <span>${cb.pickup}</span></div>
            </div>
          </div>
          <div class="position-absolute top-0 end-0" style="z-index: 1; transform: rotateZ(45deg) translate(25%, -25%); background-color: rgba(255, 255, 255, 0.919)">
            <div class="text-warning border-start border-end px-5 fs-6" style="border-style: dotted; border-color: gray;">complete</div>
          </div>
        </a>
      </c:forEach>

      <c:if test="${history.size()<1}">
        <div class="w-100 py-5 mt-4 d-flex justify-content-center" style="grid-column: 1 / 5;">No up history found</div>
      </c:if>
      <c:if test="${history.size()>0}">
        <a href="/history" class="text-decoration-none d-md-none align-self-end pe-4" style="justify-self: end;">All</a>
      </c:if>
    </div>
    
  </main>

  <jsp:include page="/footer.jsp"></jsp:include>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="https://x0-002.github.io/cs/slider.min.js"></script>
  <script src="https://x0-002.github.io/cs/index.js"></script>
</body>

</html>