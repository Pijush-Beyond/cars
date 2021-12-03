<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <!-- <script src="https://kit.fontawesome.com/2a5b8fb2dc.js" crossorigin="anonymous"></script> -->
  <link rel="stylesheet" href="https://x0-002.github.io/cs/css/mian.css">
  <style>
    .screen__background__shape1 {
      height: 520px;
      width: 520px;
      background: #FFF;
      top: -50px;
      right: 120px;
      border-radius: 0 72px 0 0;
    }

    .screen__background__shape2 {
      height: 220px;
      width: 220px;
      background: #bd867f;
      top: -172px;
      right: 0;
      border-radius: 32px;
    }

    .screen__background__shape3 {
      height: 540px;
      width: 190px;
      background: linear-gradient(270deg, #7d6565, #c38a8a);
      top: -24px;
      right: 0;
      border-radius: 32px;
    }

    .screen__background__shape4 {
      height: 400px;
      width: 200px;
      background: #967a7a;
      top: 420px;
      right: 50px;
      border-radius: 60px;
    }
    .screen {
      background: linear-gradient(90deg, #616161, #ce8a8a);
      box-shadow: 0px 0px 24px #5a5959;
    }
  </style>
</head>

<body class="overflow-x-hidden">

  <mian class="vh-100 d-flex align-items-center justify-content-center flex-column">
    <div class="screen position-relative py-5 ps-4 pe-5" style="z-index: 1;">
      <div class="position-relative mt-5 pt-5" style="z-index: 2;">
        <form class="pt-5 px-4 me-5" method="post" action="/login">
          <div class="mb-5 position-relative">
            <input name="email" type="text" class="border-0 border-bottom border-dark bg-transparent outline-0 text-underline-transition"
              placeholder="Your Email">
            <div class="transition-container border-warning"></div>
          </div>
          <div class="mb-5 position-relative">
            <input name="password" type="password" class="border-bottom border-dark border-0 bg-transparent outline-0 text-underline-transition"
              placeholder="Password">
            <div class="transition-container border-warning"></div>
          </div>
          <button class="btn rounded-pill btn-dark ps-4 pe-5 py-2 w-100 text-start">
            Log In
          </button>
        </form>
        <div class="pt-5 mt-4 d-flex flex-column align-items-end text-light" style="transform:translateX(10px)">
          <a class="navbar-brand ps-1 mb-2" href="/">
            <img src="https://x0-002.github.io/cs/icons/logo.png" viewBox="0 0 79.28 62.63" style="height:2.5rem;">
          </a>
          <a href="./signup" class="text-light text-decoration-none mb-2 text-underline-transition" style="border-color: rgb(255, 255, 255); transform-origin: left center;">New at Car Rent?</a>
          <span title="comming soon" class="text-light" style="transform-origin: left center;filter: brightness(0.7);">Forgot password?</span>
        </div>
      </div>
      <div class="top-0 start-0 bottom-0 end-0 position-absolute overflow-hidden" style="z-index: 1;">
        <span class="position-absolute screen__background__shape4" style="transform:rotate(45deg)"></span>
        <span class="position-absolute screen__background__shape3" style="transform:rotate(45deg)"></span>
        <span class="position-absolute screen__background__shape2" style="transform:rotate(45deg)"></span>
        <span class="position-absolute screen__background__shape1" style="transform:rotate(45deg)"></span>
      </div>
    </div>
  </mian>
  <script>
    window.onload =()=>{
      if(${error || false}) 
        alert("Please provide vaild user information");
      }
  </script>
</body>

</html>