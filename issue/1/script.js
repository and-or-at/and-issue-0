var pages = [
  {id: 'intro', path: './ex.html'},
  {id: 'helloWorld', path: './hello-world.html'},
  {id: 'overcomplicated', path: './overcomplicated'},
  {id: 'intro', path: './intro'}
]


var id = document.getElementById(pages[0]['id'])
fetch(pages[0]['path']).then(function(response){
    return response.text()
  }).then(function(content) {
    id.innerHTML = content
  })






var overcomplicated = document.getElementById('overcomplicated');

var body = fetch('./overcomplicated.html').then(function(response){
  return response.text()
}).then(function(content) {
  overcomplicated.innerHTML = content
})
