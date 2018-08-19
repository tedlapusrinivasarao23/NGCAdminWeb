<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet">
  <link rel="stylesheet" href="<c:url value='/static/Admin/Login/css/main.css' />">
  <title>Near Geo Contacts Login</title>
</head>

<body>
  <div class="container-fluid container--blue">
    <div class="row row--height-100 justify-content-center align-items-center">
      <div class="col col-sm-12 col-md-12 col-lg-6 for">
        <div class="form">
          <div class="form-type">
            <div class="form-type--signin form-type--active">Sign in</div>
            <div class="form-type--signup">New?
              <a href="#Sign up">
                <u>Sign up</u>
              </a>
            </div>
          </div>
          <div class="form-content">
            <div class="form-content__header">
              <div class="form-content__header__img-container">
                <img src="<c:url value='/static/images/tr.png' />" alt="logo" class="img-fluid" height="92px">
              </div>
              <p class="form-content__header__title">NEAR GEO CONTACTS</p>
            </div>
            <div class="form-content__body--signup">
              <form action="">
                <input type="text" class="form-content__body__input" id="f-name" placeholder="First Name" />
                <span class="warn" id="fnameWarn"></span>

                <input type="text" class="form-content__body__input" id="l-name" placeholder="Last Name" />
                <span class="warn " id="lnameWarn"></span>

                <input type="email" class="form-content__body__input" id="email" placeholder="Email Name" />
                <span class="warn " id="emailwarn"></span>

                <input type="number" id="phone" class="form-content__body__input" placeholder="Phone number" />
                <span class="warn" id="phoneErr"></span>
                <input type="password" class="form-content__body__input" id="passUp" placeholder="Password" />
                <span class="warn" id="regPass"></span>
              </form>
              <button class="form-content__body__btn" name="create" id="signup">Create</button>
            </div>
            <div class="form-content__body--signin">
            	<c:url var="loginUrl" value="/login" />
              <form action="${loginUrl}" method="post" >
							<c:if test="${error != null}">
								<div class="alert alert-danger">
									<p>${error}</p>
								</div>
							</c:if>
							<c:if test="${message != null}">
								<div class="alert alert-success">
									<p>${message}</p>
								</div>
							</c:if>
                <input type="text" class="form-content__body__input " id="phoneNumber" name="phoneNumber" placeholder="Enter Phone/EmailID" required="required"/>
                <input type="password" class="form-content__body__input" id="password" name="password" placeholder="******" required="required"/>
                <br/>
                <span class="form-content__body__label">
                  <input type="checkbox" class="form-content__body__checkbox" /> Remember me
                </span>
                <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
                 <button type="submit" class="col-sm-12 form-content__body__btn" name="login" id="signin">Login</button>
              </form>
              <a class="form-content__body__forget-passowrd" href="#">Forget password?</a>
            </div>
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
  <script src="<c:url value='/static/Admin/Login/js/index.js' />"></script>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>