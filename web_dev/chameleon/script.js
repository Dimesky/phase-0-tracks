console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
  // setTimeout(removeBorder, 5000);
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

// function removeBorder() {
// 	photo.style.border = "";
// }

// function hideLizard(event) {
// 	console.log("Hiding lizard!");
// 	console.log(event);
// 	photo.style.visibility = "hidden";
// }

// function showLizard(event) {
// 	console.log("Showing lizard!");
// 	console.log(event);
// 	photo.style.visibility = "visible";
// }

// var hide_button = document.getElementById("button1");
// hide_button.addEventListener("click", hideLizard);

// var show_button = document.getElementById("button2");
// show_button.addEventListener("click", showLizard);

var newHeading = document.createElement('h1');
var h1Text = document.createTextNode("Whatever you want passed into it!");
newHeading.appendChild(h1Text);

var parent = photo.parentNode;
parent.insertBefore(newHeading, photo);