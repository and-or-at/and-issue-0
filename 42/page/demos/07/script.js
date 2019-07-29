 var sq2;
  var c = document.getElementById('container')
  for(var i=0; i < 90; i++) {
    sq2 = document.createElement('div')
  sq2.style.border = '1px solid blue'
  sq2.className = 'square'
  sq2.style.top = (i * 100)  + 'px'
  sq2.style.left = (i * 100) + 'px'
  sq2.style.transform = "rotate(" + i + "deg)"
  c.append(sq2)
  }
var s;
var sq;
  c.addEventListener('mouseenter', function() {
    s =  document.getElementsByClassName('square')
    sq = Array.from(s)
    sq.forEach(function(sq2) {
      sq2.style.top = '0px'
      sq2.style.left = '0px'
    })
  })

  c.addEventListener('mouseleave', function() {
    c.style.background = 'black'
  })


  var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)

var line = document.getElementById('line')
slider.oninput = function() {
  output.innerHTML = this.value;
  line.style.width = (this.value * 10) + 'px';
}

