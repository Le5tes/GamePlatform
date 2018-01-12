postStatus = function(state){
  console.log(state)
  $.ajax({
    type: 'POST',
    url: 'http://localhost:9292/status/new',
    data: {status: state},
    dataType: 'json',
    success: function(data){
      console.log(data)
      $('#status').text("Status: " + data)
    }
  })
}

postTagline = function(){
  var tagline = $('#taglinetext').val()
  $.ajax({
    type: 'POST',
    url: 'http://localhost:9292/tagline/new',
    data: {tagline: tagline},
    dataType: 'json',
    success: function(data){
      $('#taglinebox').replaceWith(`<div id="tagline">
      <h5>`+ data + `</h5>
    </div>`)
    }
  })
}

updateStatusForm = function(){
  $('#tagline').replaceWith(`
    <div id="taglinebox">
      <div>
        <textarea id="taglinetext"></textarea>
      </div>
      <div>
        <button onclick="postTagline()">Update</button>
      </div>
    </div>`)
  }
