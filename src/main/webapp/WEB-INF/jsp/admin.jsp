<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/static/Admin/welcome/css/dashboard-mertic.css' />">
<title>Admin Page</title>
</head>
<body>
	<sec:authorize access="isFullyAuthenticated()">

		<div class="container-fluid padding--0">
			<nav
				class="navbar fixed-top navbar-expand-lg navbar-dark nav__change bg--blue">
				<!-- <a class="navbar-brand logo" href="#">
        <img src="./tr.png" alt="logo" width="60px" height="50px">
      </a> -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<!-- <div class="separator"></div> -->
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a
							class="nav-link nav-logo__text" href="#">
								<div class="title">Welcome Admin:</div>
								<div class="sub-title">${user}</div> <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Contacts </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Favourites </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Groups </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Contacts Nearby </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Around Me </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Shared </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Print Contacts </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Profile </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Change Password </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Help </a></li>
						<li class="nav-item menu"><a class="nav-link nav-logo__text"
							href="#">Feedback </a></li>

					</ul>
					<div class="icon-goto">
						<a href="<c:url value="/logout" />"><img src="<c:url value='/static/images/goto.png' />"  alt=""> </a>
						<img src="<c:url value='/static/images/hamburger.png' />" alt="" id="hamburger">
					</div>
				</div>
			</nav>
			<div class="row justify-content-space row--height-100">
				<div
					class="col-12 col-sm-12 col-xl-10 col-5  main-card main-card--left">
					<!-- <div class="row justify-content-between"> -->
					<div class="deck-container">
						<div class=" deck">
							<div class="deck__title">New user</div>
							<div class="deck__sub-title--green">2,15,478</div>
							<div class="deck__circle">
								<div id="indicatorContainer"></div>
							</div>
						</div>
						<div class=" deck deck--middle">
							<div class="deck__title">New Purchases</div>
							<div class="deck__sub-title--red">2,15,478</div>
							<div class="deck__circle">
								<div id="indicatorContainer2"></div>
							</div>
						</div>
						<div class=" deck">
							<div class="deck__title">Bounce Rate</div>
							<div class="deck__sub-title--blue">80%</div>
							<div class="deck__circle">
								<div id="indicatorContainer3"></div>
							</div>
						</div>
					</div>
					<div class="con">
						<div class="visitors-analytics">
							<div class="visitors-analytics__title">Visitors Analytics -
								Top 4 Countries</div>
							<div class="visitors-analytics__legend" id="usa">
								<div class="visitors-analytics__legend__text">USA - 100K</div>
								<div class="visitors-analytics__legend__line"></div>
								<div class="visitors-analytics__legend__line--fade"></div>
								<div class="visitors-analytics__legend__progress">49%</div>
							</div>
							<div class="visitors-analytics__legend" id="eu">
								<div class="visitors-analytics__legend__text">Europe - 1M</div>
								<div class="visitors-analytics__legend__line bg--purple"></div>
								<div class="visitors-analytics__legend__line--fade"></div>
								<div class="visitors-analytics__legend__progress">49%</div>
							</div>
							<div class="visitors-analytics__legend" id="aus">
								<div class="visitors-analytics__legend__text">Austrila -
									150K</div>
								<div class="visitors-analytics__legend__line bg--orangered"></div>
								<div class="visitors-analytics__legend__line--fade"></div>
								<div class="visitors-analytics__legend__progress">49%</div>
							</div>
							<div class="visitors-analytics__legend" id="india">
								<div class="visitors-analytics__legend__text">India - 1B</div>
								<div class="visitors-analytics__legend__line bg--orange"></div>
								<div class="visitors-analytics__legend__line--fade"></div>
								<div class="visitors-analytics__legend__progress">49%</div>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="col-12 col-sm-12 col-xl-5 col-5  main-card main-card--right">
        <div class="profile-container">
          <div class="profile">
            <div class="profile__title">
              Profile
            </div>
            <div class="profile__action">
              <img src="./images/Layer 12.png" alt="edit svg" /> EDIT
            </div>
          </div>
          <div class="profile__body">
            <div class="back">
              <img src="./images/left.png" alt="">
            </div>
            <div class="forward">
              <img src="./images/right.png" alt="">
            </div>
            <div class="profile__body__content">
              <div class="profile-field">
                <div class="profile-field__title">First Name</div>
                <div class="profile-field__sub-title">Sambasiva</div>
              </div>
              <div class="profile-field">
                <div class="profile-field__title">Last Name</div>
                <div class="profile-field__sub-title">Roa</div>
              </div>
              <div class="profile-field">
                <div class="profile-field__title">Email</div>
                <div class="profile-field__sub-title">Sambasiva@gmail.com</div>
              </div>
              <div class="profile-field">
                <div class="profile-field__title">Phone Number</div>
                <div class="profile-field__sub-title">9876543210</div>
              </div>
              <div class="profile-field">
                <div class="profile-field__title">Password</div>
                <div class="profile-field__sub-title">Sambasiva Rao</div>
              </div>
            </div>
            <div class="profile__body__avatar">
              <img src="./images/boy.png" alt="avatar" class="img-fluid">
              <div class="profile__btn">
                Change Photo
              </div>
            </div>
          </div>
          <div class="profile__footer">
            <div class="profile__footer__action">
              <button class="bttn btn--grey">Cancel</button>
              <button class="bttn btn--green">Save</button>
            </div>
          </div>
        </div>
      </div> -->
				<div class="sidebar">
					<div class="links">
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/contact.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text sidebar-link__text--active">
								Contacts</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/start.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Favouraite</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/people.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Groups</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/contact-nearby.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Contacts Nearby</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/around-me.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Around Me</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/shared.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Shared</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/printer.png' />" alt="icon">
							</div>
							<a class="sidebar-link__text">Print Contacts</a>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/profile.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Profile</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/password.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Change Password</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/help.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Help</div>
						</div>
						<div class="sidebar-link">
							<div class="sidebar-link__icon">
								<img src="<c:url value='/static/images/feedback.png' />" alt="icon">
							</div>
							<div class="sidebar-link__text">Feedback</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col footer">
					<b>Powered by Himaja Infotech Pvt. Ltd.</b>
				</div>
			</div>
		</div>

		</div>
		<script src="<c:url value='/static/Admin/welcome/js/radialIndicator.js' />"></script>
		<script src="<c:url value='/static/Admin/welcome/js/dashboard.js' />"></script>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>




	</sec:authorize>

</body>
</html>