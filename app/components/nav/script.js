let li;
let a;
let el;
let h2;
let ul;
let title;
let nav;

function createEl(el) {
  let _el = document.createElement(el)
  document.body.prepend(_el)
  return _el;
};

function loadData(c) {
  return window
  .fetch(`/app/views/${c}/data.json`)
  .then(function(response) {
    return response.json();
  })
  .then(function(data) {
    return data;
  })
};

function getComponent(c) {
  return window
  .fetch(`/app/views/${c}/index.html`)
  .then(function(response) {
    return response.text();
  })
}

function createNav(nav) {
  el = createEl('header');
  getComponent('nav')
  .then(function(data) {
    el.innerHTML = data;
    createNavItems(nav)
  });
  document.body.prepend(el)
}

function createNavItems(nav) {
  nav.forEach((item) => {
   title = item.title
   li = document.createElement('li')
   a = document.createElement('a')
   a.text = title
   // _dw add absolute path
   a.href = item.href
   li.append(a)
   li.append(' | ')
   li.append(item.desc)
   ul = document.querySelector('#menu')
   ul.append(li)
   // debugger;
   // el.append(h2)
   // createItemTitle(n, li, ul, el)
   // createItemDescription

 });
}

function createItemTitle(n, li, ul, el) {
  n[title].forEach((i) => {
    a = document.createElement('a')
    a.href='/' + title + '/' + i
    a.innerText = i
    li = document.createElement('li')
    li.append(a)
    ul.append(li)
  })
  el.append(ul)
}

(async function() {
 nav = await loadData('nav');
 createNav(nav);
})();
