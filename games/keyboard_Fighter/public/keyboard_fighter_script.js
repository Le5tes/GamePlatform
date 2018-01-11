$(document).ready(function () {
  var count = 0;
  $('#body').keyup(function () {

    var txtInput = $(this).val();
    txtInput = txtInput.charAt(txtInput.length - 1);
    count += 1;
    $("#test").html(count);
  });
});
