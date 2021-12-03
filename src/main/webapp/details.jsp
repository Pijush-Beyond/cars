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

  <main class="pt-4_125rem min-vh-100 align-items-center d-flex flex-column justify-content-center">
    <div class="d-flex flex-column flex-md-row w-100 px-4 pt-3 pb-3" style="max-width: 1500px;">
      <div id="car" class="w-md-50 postion-relative car-details-img w-100 mb-4 mb-md-0">
        <c:forEach var="i" begin="0" end="${car.images.size()-1}">
          <img src="https://x0-002.github.io/cs${car.images.get(i).url}" class="object-contain w-100 position-absolute" data-slidr="${i}">
        </c:forEach>
      </div>
      <div class="w-md-50 w-100 ms-0 ms-md-4 d-flex flex-column justify-content-center">
        <h4 class="fw-normal fw-bold mb-4">${car.name}</h4>
        <hr>
        <div class="text-muted mb-3">Features</div>
        <div class="d-flex justify-content-evenly align-items-center flex-wrap">
          <div class="d-flex align-items-center w-fit-content me-3 mb-3">
            <img src="https://x0-002.github.io/cs/icons/engine.png" style="width: 45px">
            <div class="text-muted fw-bold">
              Engine <br>
              <span class="text-body">${car.engine}cc</span>
            </div>
          </div>
          <div class="d-flex align-items-center w-fit-content me-3 mb-3">
            <img src="https://x0-002.github.io/cs/icons/energy.png" style="width: 45px">
            <div class="text-muted fw-bold">
              BHP <br>
              <span class="text-body">${car.bhp}Bhp</span>
            </div>
          </div>
          <div class="d-flex align-items-center w-fit-content me-3 mb-3">
            <img src="https://x0-002.github.io/cs/icons/transmission.png" style="width: 45px">
            <div class="text-muted fw-bold">
              Transmission <br>
              <span class="text-body">${car.transmission}</span>
            </div>
          </div>
          <div class="d-flex align-items-center w-fit-content mb-3">
            <img src="https://x0-002.github.io/cs/icons/speed.png" style="width: 45px">
            <div class="text-muted fw-bold">
              Mileage <br>
              <span class="text-body">${car.milage}kmpl</span>
            </div>
          </div>
        </div>

      </div>
    </div>
    <div class="px-3 mb-4 w-100" style="max-width: 1500px;">
      <hr>
      <div class="mb-3">Summary</div>
      <div class="mb-4 ms-4">
        <div class="text-muted form-label text-capitalize">
          <span>Pick-up Point</span>
          <span class="text-center mx-2">-</span>
          <span>Drop Point</span>
        </div>
        <div class="d-flex align-items-center text-capitalize">
          <span class="fw-bold">${pickup}</span>
          <span class="text-center mx-5">-</span>
          <span class="fw-bold">${dropoff}</span>
        </div>
      </div>
      <div class="mb-4 ms-4">
        <div class="text-muted form-label text-capitalize">
          <span>From Date</span>
          <span class="text-center mx-2">-</span>
          <span>Till Date</span>
        </div>
        <div class="d-flex align-items-center text-capitalize">
          <span class="fw-bold">${pickupDate}</span>
          <span class="text-center mx-5">-</span>
          <span class="fw-bold">${dropoffDate}</span>
        </div>
      </div>
      <div class="mb-4 ms-4">
        <div class="text-muted form-label text-capitalize">
          <span>Price</span>
          <span class="text-center mx-2">-</span>
          <span>day count</span>
        </div>
        <div class="d-flex align-items-center text-capitalize">
          <span class="fw-bold">$${car.price}/day</span>
          <span class="text-center mx-5">-</span>
          <span class="fw-bold">${dayCount}</span>
        </div>
      </div>
      <div class="mb-4 ms-4">
        <span class="text-muted">Subtotal</span>
        <span class="text-center mx-5">-</span>
        <span class="text-warning fs-3 fw-bold">$${dayCount*car.price}</span>
      </div>
      <div class="mb-4 ms-4">
        <span class="text-muted">Payment Method</span>
        <span class="text-center mx-5">-</span>
        <span class="fw-bold">COD</span>
      </div>
    </div>
    <form action="/book" method="post" class="d-flex px-3 pb-5 w-100" style="max-width: 1500px;">
      <input name="pickup" value="${pickup}" type="hidden">
      <input name="dropoff" value="${dropoff}" type="hidden">
      <input name="pickupDate" value="${pickupDate}" type="hidden">
      <input name="dropoffDate" value="${dropoffDate}" type="hidden">
      <input name="car" value="${car.car_id}" type="hidden">
      <input name="user" value="${user}" type="hidden">
      <button type="submit" class="btn btn-outline-success w-100">Book</button>
    </form>
  </main>

  <jsp:include page="/footer.jsp"></jsp:include>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="https://x0-002.github.io/cs/slider.min.js"></script>
  <script src="https://x0-002.github.io/cs/index.js"></script>
  <script src="https://x0-002.github.io/cs/js/car-details.js"></script>
</body>

</html>