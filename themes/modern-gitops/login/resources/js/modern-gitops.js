document.addEventListener('DOMContentLoaded', function () {
  var toggleBtn = document.getElementById('mg-toggle-password');
  var passwordInput = document.getElementById('password');

  if (toggleBtn && passwordInput) {
    toggleBtn.addEventListener('click', function () {
      var isHidden = passwordInput.getAttribute('type') === 'password';
      passwordInput.setAttribute('type', isHidden ? 'text' : 'password');
      toggleBtn.setAttribute('aria-pressed', isHidden ? 'true' : 'false');
      toggleBtn.setAttribute('aria-label', isHidden ? 'Ocultar senha' : 'Mostrar senha');
      toggleBtn.classList.toggle('is-visible', isHidden);
    });
  }

  var loginForm = document.getElementById('kc-form-login');
  var submitBtn = document.getElementById('kc-login');

  if (loginForm && submitBtn) {
    loginForm.addEventListener('submit', function () {
      submitBtn.disabled = true;
      submitBtn.classList.add('is-loading');
    });
  }
});
