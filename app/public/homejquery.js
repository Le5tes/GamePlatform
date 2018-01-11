signUpForm = function(){
  $("#home-box").empty()
  $("#home-box").html(`<div id="signupform">
    <form action= "/users" method = "post">
      <div><input type = "text" name = "username" placeholder="username"></div>
      <div><input type = "text" name = "first_name" placeholder="first name"></div>
      <div><input type = "text" name = "last_name" placeholder="last_name"></div>
      <div><input type = "text" name = "email" placeholder="email"></div>
      <div><input type = "password" name = "password" placeholder="password"></div>
      <div><input type = "password" name = "password_confirm" placeholder="confirm password"></div>
      <div><input type = "submit" value = "Sign up"></div>
    </form>
  </div>`)
}
