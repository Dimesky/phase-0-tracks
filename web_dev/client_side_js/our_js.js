function addGreenBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "5px dashed green";
  setTimeout(removeBorder, 2500);
  parent.insertBefore(newHeading, photo);
  setTimeout(removeh1, 2500);
}

var photo = document.getElementById("cat-photo");
photo.addEventListener("click", addGreenBorder);

function removeBorder() {
	photo.style.border = "";
}

function removeh1() {
	newHeading.style.visibility = "hidden";
}

function hideCat(event) {
	console.log("Hiding cat!");
	console.log(event);
	photo.style.visibility = "hidden";
}

function showCat(event) {
	console.log("Showing cat!");
	console.log(event);
	setTimeout(showCatDelay, 2500);
}

function showCatDelay() {
	photo.style.visibility = "visible";
}

function changeMittens(event) {
	console.log("Changing text!");
	change_text.innerHTML = "MITTENSMITTENSMITTENS";
}

var hide_button = document.getElementById("button1");
hide_button.addEventListener("click", hideCat);

var show_button = document.getElementById("button2");
show_button.addEventListener("click", showCat);

var newHeading = document.createElement('h1');
var h1Text = document.createTextNode("Whatever you want passed into it!");
newHeading.appendChild(h1Text);
var parent = photo.parentNode;

var change_text = document.getElementById("mittens");
change_text.addEventListener("mouseover", changeMittens);