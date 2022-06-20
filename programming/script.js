const card = document.getElementById('content')
const card_children = Array
.prototype
.slice
.call(card.children)
.sort((a, b) => a.innerHTML.localeCompare(b.innerHTML));
for (item of card_children) {
  card.appendChild(item)
}
function filter(e){
  text = e.target.value.toLowerCase()
  card.innerHTML = ''
  for (item of card_children) {
    if (item.getElementsByTagName('strong')[0].innerHTML.toLowerCase().includes(text)) {
      card.appendChild(item)
    }
  }
}
document
  .getElementById('search')
  .addEventListener('keyup', filter)