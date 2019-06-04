var menu = document.getElementById('menu', function(a) {})


var close = document.getElementById('close', function(a) {
  console.log('<a href="close" target="_blank"></a>a')
})


var nav = document.getElementById('nav')

// console.log(close)

menu.onclick = function (e) {
  e.preventDefault();
  nav.className = 'nav full'
}

close.onclick = function (e) {
  e.preventDefault();
  nav.className = 'nav'
}