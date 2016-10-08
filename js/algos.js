// Pseudocode for a method that takes an array of words or phrases and returns the longest word or phrase in the array.

//1. The method takes an array as an argument
//2. The array is then iterated through, one string at a time
//3. 	The current string's characters are then iterated through (and counted), and if the lenth of the string is
//			onger than the length of the previous string, the index of that string is returned
//4. The index of the string that is returned is then used to access the longest string itself,
//5.  	which is then returned.

// Pseudocode for a method that takes two people objecs and compares their instance variables and returns true if either are the same

//1. The method takes two people objects as arguments
//2. The person's instance variables are then set to variables
//3. If person 1's name is the same as person 2's name OR person 1's age is the same as person 2's age
//4. Return true
//5. 	Otherwise - return false

// Pseudocode for a method that takes an integer for length, and builds and returns an array of strings of the given length

//1. The method takes a number as an argument
//2. The method then uses the number to loop that many times
//3. 	With each loop a random number is generated
//4.	The random number is used to create another random string of characters that are that number in length
//5. The string is added to an array that is returned.

function longest_string(array) {

	var longest_string = "";

	for (i = 0; i < array.length; i++) {
		if (array[i].length >= longest_string.length) {
			longest_string = array[i];
		}
	}
	return longest_string;
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

function create_string_array(number) {

	//return (Math.floor((Math.random() * 10)) + 1);
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	string_array = [];

	for (i = 0; i < number; i++) {
		var string_length = (Math.floor((Math.random() * 10)) + 1);
		new_string = "";
		for (l = 0; l < string_length; l++) {
			new_string += alphabet[Math.floor(Math.random() * 26)];
		}
		string_array.push(new_string);
	}
	return string_array;
}



console.log(longest_string(["long phrase","longest phrase","longer phrase"]));

var matt_person = {name: "Matt", age: 33};
var tanya_person = {name: "Tanya", age: 27};
var same_person = {name: "Same", age: 33};
console.log(compare_people(matt_person, tanya_person));
console.log(compare_people(matt_person, same_person));

//console.log(create_string_array(10));

var array = [];

for (times = 0; times < 10; times++) {
	array = create_string_array(Math.floor(Math.random() * 10) + 1);
	console.log(array);
	console.log("The longest string in this array was " + (longest_string(array)));
}

