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
  <title>Document</title>
</head>

<body class="overflow-x-hidden">
  <!-- navigation bar -->
  <jsp:include page="/nav.jsp"/>

  <main class="pt-4_125rem min-vh-100 d-flex justify-content-center">
    <form novalidate action="/result" method="get" class="sw-100 w-sm-75 w-lg-50 px-3 px-sm-0 py-5 d-flex flex-column align-items-center need-validation">
      <div class="mb-3 w-fit-content overflow-hidden" style="border-radius: 1.25rem;border: 1px solid black">
        <select name="type" id="type"
          class="form-select text-center w-initial fs-5 border-0 bg-transparent cursor-pointer bg-danger"
          style="box-shadow: none;transform: translateX(27%); background: none" value="${type}">
          <option value="Sedan" selected>Sedan</option>
          <option value="SUV">SUV</option>
          <option value="Electric">Electric</option>
          <option hidden>sksksskskskkff</option>
        </select>
      </div>
      <div class="w-100 d-flex flex-row flex-sm-column flex-warp flex-sm-no-warp mb-3">
        <div class="bus-hidden mb-0 mb-sm-4 d-flex align-items-center w-100 flex-column flex-sm-row">
          <div class="me-3 mb-3 mb-sm-0 flex-basis-sm-100">
            <label for="pickup" class="text-capitalize form-label">pick-up point</label>
            <input type="text" name="pickup" id="pickup" class="form-control text-center"
              style="border-radius: 1.5rem;padding-left: 2rem" placeholder="Your Pick-up Point" list="datalistOptions"
              pattern="Swanston Street|Dawson street|Cardigan Street|McKimmies Rd,Bundoora|East Bendigo Vic 3550" required value="${pickup}">
            <div class="invalid-feedback">Please enter your pick-up point</div>
            <datalist id="datalistOptions">
              <option value="Swanston Street">Swanston Street</option>
              <option value="Dawson street">Dawson street</option>
              <option value="Cardigan Street">Cardigan Street</option>
              <option value="McKimmies Rd,Bundoora">McKimmies Rd,Bundoora</option>
              <option value="East Bendigo Vic 3550">East Bendigo Vic 3550</option>
            </datalist>
          </div>
          <div class="me-3 me-sm-0">
            <label for="pickupDate" class="text-capitalize form-label">pick-up date</label>
            <input type="date" name="pickupDate" id="pickupDate" class="form-control text-center fs-small fs-lg-6"
              style="border-radius: 1.5rem" required value="${pickupDate}">
            <div class="invalid-feedback">Please enter your pick-up date</div>
          </div>
        </div>
        <div class="bus-hidden d-flex align-items-center w-100 flex-column flex-sm-row">
          <div class="me-sm-3 mb-3 mb-sm-0  flex-basis-sm-100">
            <label for="dropoff" class="text-capitalize form-label">drop point</label>
            <input type="text" name="dropoff" id ="dropoff" class="form-control text-center"
              style="border-radius: 1.5rem;padding-left: 2rem" placeholder="Your Drop Point" list="datalistOptions"
              pattern="Swanston Street|Dawson street|Cardigan Street|McKimmies Rd,Bundoora|East Bendigo Vic 3550" required value="${dropoff}">
            <div class="invalid-feedback">Please enter your drop point</div>
          </div>
          <div>
            <label for="dropoffDate" class="text-capitalize form-label">drop date</label>
            <input type="date" name="dropoffDate" id="dropoffDate" class="form-control text-center fs-small fs-lg-6"
              style="border-radius: 1.5rem" required value="${dropoffDate}">
            <div class="invalid-feedback">Please enter drop date</div>
          </div>
        </div>
      </div>
      <div class="bus w-100 d-none">
        <label for="datetime" CLASS="text-capitalize form-label">Your Time</label>
        <input type="datetime-local" name="datetime" id="datetime" class="form-control text-center" style="border-radius: 1.25rem;">
        <div class="invalid-feedback">Please enter date and time</div>
      </div>
      <button type="submit" class="align-self-center minw-fit-content btn mt-5 py-1 w-100 bg-dark" style="border-radius:1.25rem">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70.66 68.95" style="width:2rem;">
          <path style="fill:none;stroke:#fff;stroke-width:3px;"
            d="M30.27,5.92l3.35-3.36a3.62,3.62,0,0,1,5.11,0h0L68.1,31.91a3.6,3.6,0,0,1,0,5.1v0L38.74,66.39a3.6,3.6,0,0,1-5.1,0h0L30.27,63a3.63,3.63,0,0,1,0-5.13l0,0,18.2-17.33H5.13A3.62,3.62,0,0,1,1.5,36.91V32.06a3.63,3.63,0,0,1,3.61-3.63H48.53L30.33,11.1A3.6,3.6,0,0,1,30.18,6Z" />
          <path style="fill:none;stroke:rgb(233, 191, 21);stroke-width:3px;" class="animated-path"
            d="M30.27,5.92l3.35-3.36a3.62,3.62,0,0,1,5.11,0h0L68.1,31.91a3.6,3.6,0,0,1,0,5.1v0L38.74,66.39a3.6,3.6,0,0,1-5.1,0h0L30.27,63a3.63,3.63,0,0,1,0-5.13l0,0,18.2-17.33H5.13A3.62,3.62,0,0,1,1.5,36.91V32.06a3.63,3.63,0,0,1,3.61-3.63H48.53L30.33,11.1A3.6,3.6,0,0,1,30.18,6Z" />
        </svg>
      </button>
    </form>
    
  </main>

  <jsp:include page="/footer.jsp"></jsp:include>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script src="https://x0-002.github.io/cs/slider.min.js"></script>
  <script src="https://x0-002.github.io/cs/index.js"></script>
  <script src="https://x0-002.github.io/cs/js/search.js"></script>
</body>

</html>