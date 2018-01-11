$(document).ready(function () {
  var count = 0;
  $(document.body).keyup(function () {

    var txtInput = $(this).val();
    txtInput = txtInput.charAt(txtInput.length - 1);
    count += 1;
    console.log(count)
    $("#test").html(count);
  });
});
