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

function compare_people(person1, person2) {

	name1 = person1.name;
	name2 = person2.name;
	age1 = person1.age;
	age2 = person2.age;

	if (name1 === name2 || age1 === age2) {
		return true;
	} else {
		return false;
	}
}



console.log(longest_string(["long phrase","longest phrase","longer phrase"]))

var matt_person = {name: "Matt", age: 33};
var tanya_person = {name: "Tanya", age: 27};
var same_person = {name: "Same", age: 33};
console.log(compare_people(matt_person, tanya_person));
console.log(compare_people(matt_person, same_person));