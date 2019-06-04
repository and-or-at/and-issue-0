const scripts = [
"/app/views/nav/script.js"
]

scripts.forEach((script) => {
  window.fetch(script).then((response) =>{
    return response.text();
  }).then((data) =>{
    Function(data)();
  })
})