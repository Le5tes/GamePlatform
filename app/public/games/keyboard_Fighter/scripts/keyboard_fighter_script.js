$(document).ready(function () {
  var player_1_score = 0;
  var player_2_score = 0;
  var start_bar = 50;


  function updateProgress(start_bar) {
    $('.progress-bar').css("width", start_bar + '%')
  }

  function updateGame(event) {
    if (event.which === 65) {
      start_bar += 10;
    } else if (event.which === 76) {
      start_bar -= 10;
    }
    updateProgress(start_bar);
    $(".score").html(`${start_bar}%`);
  }

  function getWinner() {
    if (start_bar === 100) {
      $(".winner").html("PLAYER 1 WINS")
    } else if (start_bar === 0) {
      $(".winner").html("PLAYER 2 WINS")
    }
  }

  $(document.body).keyup(function (event) {
    updateGame(event)
    if (start_bar === 100 || start_bar === 0){
      getWinner()
      $(".progress").fadeOut('fast');
      $(".winner").fadeIn('slow');
      $('.winner').animate({ marginTop: '22%', color: 'red' }, 1000);
    }
  });
});

