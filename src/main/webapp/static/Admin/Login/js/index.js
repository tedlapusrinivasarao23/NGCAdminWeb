window.onload = function () {
  const signinDiv = document.querySelector('.form-type--signin');
  const signupDiv = document.querySelector('.form-type--signup');

  const loginbtn = document.getElementById('signin');
  const signupbtn = document.getElementById('signup');
  const fname = document.getElementById('f-name');
  const email = document.getElementById('email');
  const emailwarn = document.getElementById('emailwarn');
  const lname = document.getElementById('l-name');
  const passUp = document.getElementById('passUp');
  const fnameWarn = document.getElementById('fnameWarn');
  const lnameWarn = document.getElementById('lnameWarn');
  const regPass = document.getElementById('regPass');
  const username = document.getElementById('username');
  const usrwarn = document.getElementById('usrwarn');
  const phone = document.getElementById('phone');
  const phoneErr = document.getElementById('phoneErr');
  const passwarn = document.getElementById('passwarn');
  const password = document.getElementById('password');

  const signinForm = document.querySelector('.form-content__body--signin');
  const signupForm = document.querySelector('.form-content__body--signup');

  loginbtn.addEventListener('click', function () {
    usrwarn.textContent = '';
    passwarn.textContent = '';
    if (!username.value.length) {
      usrwarn.textContent = 'Invalid username';
    }
    if (!password.value.length) {
      passwarn.textContent = 'Invalid Password';
    }
  });
  signupbtn.addEventListener('click', function () {
    fnameWarn.textContent = '';
    emailwarn.textContent = '';
    lnameWarn.textContent = '';
    regPass.textContent = '';
    phoneErr.textContent = '';
    if (!fname.value.length) {
      fnameWarn.textContent = 'Invalid username';
    }
    if (!lname.value.length) {
      lnameWarn.textContent = 'Invalid last name';
    }
    if (!passUp.value.length) {
      regPass.textContent = 'Password must be 8 characters long';
    }
    if (!(7000000000 < phone.value && phone.value < 9999999999) ||
      !phone.value
    ) {
      phoneErr.textContent = 'Invalid phone';
    }
    if (!email.value.length) {
      emailwarn.textContent = 'Invalid Email';
    }
  });

  signinDiv.addEventListener('click', function () {
    usrwarn.textContent = '';
    passwarn.textContent = '';
    signinDiv.classList.add('form-type--active');
    signupDiv.classList.remove('form-type--active');
    signinForm.style.display = 'block';
    signupForm.style.display = 'none';
  });

  signupDiv.addEventListener('click', function () {
    fnameWarn.textContent = '';
    emailwarn.textContent = '';
    lnameWarn.textContent = '';
    regPass.textContent = '';
    phoneErr.textContent = '';
    signupDiv.classList.add('form-type--active');
    signinDiv.classList.remove('form-type--active');
    signupForm.style.display = 'block';
    signinForm.style.display = 'none';
  });
};