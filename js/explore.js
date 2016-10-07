// Pseudocode a function that takes a string as a parameter and reverses the string.

// 1. The string is passed into the function
// 2. Each character is iterated though the string and the character is given an index value of the length of the total string, 
// minus the index value
// 3. The string is then reassembled based off of the index value for each character

function reverse_string(str) {

	reversed_string = ""

	for (var i = 1; i <= str.length; i++) {
		reversed_string += (str[str.length - i])
	}
	return reversed_string;
}

var stored_string = reverse_string("I love JavaScript! (seriously!!!)");

if (stored_string.length > 3) {
	console.log(stored_string);
} else {
	console.log("String is too short to print");
}