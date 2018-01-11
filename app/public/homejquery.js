signUpForm = function(){
  $("#home-box").empty()
  $("#home-box").html(`<div id="signupform">
    <form action= "/users" method = "post">
      <div><input class="signupform" type = "text" name = "username" placeholder="username"></div>
      <div><input class="signupform" type = "text" name = "first_name" placeholder="first name"></div>
      <div><input class="signupform" type = "text" name = "last_name" placeholder="last_name"></div>
      <div><input class="signupform" type = "text" name = "email" placeholder="email"></div>
      <div><input class="signupform" type = "password" name = "password" placeholder="password"></div>
      <div><input class="signupform" type = "password" name = "password_confirm" placeholder="confirm password"></div>
      <div><input class="signupform" type = "file" name = "image" placeholder="userimage"></div>
      <div>
        <input class="signupform" type = "submit" value = "Sign up">
        <button onclick="returnButton()">Back</button>
      </div>
    </form>
  </div>`)
}

returnButton = function(){
  $("#home-box").empty()
  $("#home-box").html(`<div class="container-flex title">
    <h1>hello</h1>
  </div>
  <div class="home-button1">
    <button class="home-buttons" name="signin" onclick="signUpForm()">Sign In</button>
  </div>
  <div class="home-button2">
    <button class="home-buttons" name="signin" onclick="signUpForm()">Sign Up</button>
  </div>`)
}
