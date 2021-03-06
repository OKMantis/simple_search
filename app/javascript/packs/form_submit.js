const formSubmit = () => {
  var checkBoxes = document.querySelectorAll(".form-check-input");
  var form = document.querySelector('form');

  for (const check of checkBoxes) {
    check.addEventListener( 'change', function() {
      Rails.fire(form, 'submit');
    });
  }
}

export { formSubmit };
