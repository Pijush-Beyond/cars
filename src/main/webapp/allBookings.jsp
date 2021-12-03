<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://x0-002.github.io/cshttps://kit.fontawesome.com/2a5b8fb2dc.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://x0-002.github.io/cs/css/mian.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <title>${history?"History":"Up commings"}</title>
</head>

<body class="overflow-x-hidden">
  <!-- navigation bar -->
  <jsp:include page="/nav.jsp"/>

  <main class="pt-4_125rem min-vh-100 d-flex align-items-center flex-column">
    <div class="result-grid w-100 grid-gap-4 px-5 mb-5 mt-5" style="max-width: 1500px;">

      <c:if test="${b.isEmpty()}">
        <div class="d-flex flex-warp align-items-center justify-content-center" style="grid-column: 1/ 5">
          <img src="https://x0-002.github.io/cs/icons/sad.gif" class="rounded-circle me-2" style="width:40px;">
          <bold>No record found.</bold>
        </div>
      </c:if>
      <c:forEach var="i" items="${b}">
        <a href="/bookingDetails/${i.booking_id}" class="d-block text-decoration-none mb-3 mb-md-0 me-0 me-md-3 bg-light overflow-hidden rounded-3 position-relative shadow shadow-lg-hover shadow-lg-focus aos-init b-mb-4 pe-mb-3" >
          <img src="https://x0-002.github.io/cs${i.car.images.get(0).url}" class="w-100 object-cover mb-3" style="height:200px">
          <div class="px-4 mb-3">
            <div class="mb-2">
              <h4 class="fw-normal text-body">${i.car.name}</h4>
            </div>
            <div class="mb-3 text-decoration-none d-flex justify-content-between flex-warp fw-bold form-label text-body">
              <div class="pe-3"><span class="text-muted">Pick-up date - </span> <span>${i.pickupDate}</span></div>
              <div class="pe-3"><span class="text-muted">Duration - </span> <span>${i.dayCount}days</span></div>
              <div><span class="text-muted">From - </span> <span>${i.pickup}</span></div>
            </div>
          </div>
          <div class="position-absolute top-0 end-0" style="z-index: 1; transform: rotateZ(45deg) translate(25%, -25%); background-color: rgba(255, 255, 255, 0.919)">
            <div class="text-warning border-start border-end px-5 fs-6" style="border-style: dotted; border-color: gray;">${history?"complete":"up-comming"}</div>
          </div>
        </a>
      </c:forEach>
    </div>
  </main>

  <jsp:include page="/footer.jsp"></jsp:include>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="https://x0-002.github.io/cs/slider.min.js"></script>
  <script src="https://x0-002.github.io/cs/index.js"></script>
</body>

</html>