let img = document.querySelectorAll('img')
let caption = document.querySelector('figcaption')
img[0].addEventListener("mouseover", function () {
	caption.innerText = "FLEXBOX"
    
})
img[0].addEventListener("mouseout", function () {
	caption.innerText = ""
})
img[1].addEventListener("click", function () {
	if (this.classList.contains('border')) {
		this.classList.remove('border')
	} else {
		this.classList.add('border')
	}
})
img[2].addEventListener("mouseover", function () {
	this.src = 'https://habrastorage.org/r/w1560/webt/ly/98/fw/ly98fwyuawpbr2cxemrzvaq7llg.png'
})
img[2].addEventListener("mouseout", function () {
	this.src = 'https://habrastorage.org/r/w1560/webt/xz/jd/01/xzjd012ys6chgniakzq2rrxkcko.png'
})
img[3].addEventListener("mouseover", function () {
	this.src = 'https://habrastorage.org/r/w1560/webt/xz/jd/01/xzjd012ys6chgniakzq2rrxkcko.png'
})
img[3].addEventListener("mouseout", function () {
	this.src = 'https://habrastorage.org/r/w1560/webt/ly/98/fw/ly98fwyuawpbr2cxemrzvaq7llg.png'
})