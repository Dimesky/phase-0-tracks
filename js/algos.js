// Pseudocode for a method that takes an array of words or phrases and returns the longest word or phrase in the array.

//1. The method takes an array as an argument
//2. The array is then iterated through, one string at a time
//3. 	The current string's characters are then iterated through (and counted), and if the lenth of the string is
//			onger than the length of the previous string, the index of that string is returned
//4. The index of the string that is returned is then used to access the longest string itself,
//5.  	which is then returned.

function longest_string(array) {

	longest_string = ""

	for (i = 0; i < array.length; i++) {
		if (array[i].length >= longest_string.length) {
			longest_string = array[i];
		}
	}
	return longest_string
}

console.log(longest_string(["long phrase","longest phrase","longer phrase"]))
