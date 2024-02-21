let form = document.querySelector('form')
let input = document.querySelectorAll('input')
let button = document.querySelector('button')
let footer = document.querySelector('footer')
form.addEventListener('submit', function (event) {
	event.preventDefault();
})
button.addEventListener('click', function () {
	for (let i = 0; i < input.length; i++) {
		text = document.createElement('p')
		text.innerText = input[i].value
		footer.append(text)
	}
})