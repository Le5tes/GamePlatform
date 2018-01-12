
getname = function(){
  return PLAYERS[CURRENTPLAYER]	
}
getothername = function(){
	otherplayer = ((CURRENTPLAYER === 0)? 1 : 0)
  return PLAYERS[otherplayer]
}
name = getname();
theirname = getothername()
changeText = function(){
  text = document.getElementById("entertext").value
  getState(function(data){
    state = JSON.parse(data)
  console.log(state)
  console.log(typeof(state))
  state[0][name] = text 
  console.log(state)
  postState(JSON.stringify(state))
  updatepage(state[0])
})
};

refresh = function(){
  console.log("here")
  getState(function(data){
    state = JSON.parse(data)
    updatepage(state[0])
  });
};

updatepage = function(state){
  console.log(state)
  document.getElementById("mytext").innerHTML = state[name] 
  document.getElementById("theirtext").innerHTML = state[theirname]
}
setInterval(refresh,2000)
