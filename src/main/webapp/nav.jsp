<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light py-0 position-fixed fixed-top vw-100" role="navigation"
  style="z-index: 1000;">
  <div class="container-fluid px-3 bg-light py-2">
    <a class="navbar-brand ps-1 align-items-center d-flex" href="/">
      <img src="https://x0-002.github.io/cs/icons/logo.png" style="width:1.5rem">
      <span class="ms-1 fs-3" style="color: #000a4A; font-family: sarif;">RMIT</span>
    </a>
    <div class="navbar-toggler-custom d-flex align-items-center justify-content-center d-lg-none">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
    <div class="navbar-collapse floating-nav flex-grow-0 position-absolute position-lg-static" id="navbarNavDropdown">
      <!-- nav menus is in under ul -->
      <ul class="navbar-nav bg-light">
        </li>
        <li class="nav-item dropdown px-3">
          <div class="dropdown-toggle d-lg-inline  nav-link cursor-pointer" data-toggle="dropdown">
            <i class="fa fa-user fa-2x text-dark d-none d-lg-inline d-lg-inline-block"></i>
            <span class="fs-4 d-lg-none" style="color: inherit; background-color:inherit;">Profile</span>
          </div>
          <ul class="dropdown-menu text-lg-end mb-2" style="right: 0;" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="/overview">Overview</a></li>
            <li><a class="dropdown-item" href="/upcommingBookings">Upcoming Booking</a></li>
            <li><a class="dropdown-item" href="/history">History</a></li>
            <li><a class="dropdown-item text-end" href="/logout">
              <i class="fas fa-sign-out-alt fa-2x "></i>
            </a></li>
          </ul>
        </li>
      </ul>

      <!-- menu bar whole page background -->
      <div class="collapse-nav-bg position-fixed d-block d-lg-none vw-100 top-0"
        style="z-index: -1;background-color:#4a4a4a4a;height:calc(100vh - 4.125rem)">
        <!-- cross for menu bar close -->
        <div class="position-absolute mouse-pointer navbar-toggler-cross" style="bottom:20%;left:50%">
          <div class="border-start border-secondary position-absolute top-50 start-50 border-3"
            style="height:2rem;transform: rotate(45deg);"></div>
          <div class="border-start border-secondary position-absolute top-50 start-50 border-3"
            style="height:2rem;transform: rotate(-45deg);"></div>
        </div>
      </div>
    </div>
  </div>
</nav>