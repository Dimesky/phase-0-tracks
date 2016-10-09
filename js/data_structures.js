var color = ["blue", "red", "gray", "raspberry obmre"];

var horse = ["Mr, Ed", "Secretariat", "Thousand miles", "Thor"];

color.push("light blue");
horse.push("Sanata Claus");

console.log(color);
console.log(horse);

var horse_with_color = {}

if (color.length === horse.length) {
  for (var i = 0; i < color.length; i++) {
    horse_with_color[horse[i]] = color[i];
  }
}
  
console.log(horse_with_color);

function Car(type, model, year, color) {
  
  this.type = type;
  this.model = model;
  this.year = year;
  this.color = color;
  
  this.shift = function(type) { console.log(type) + console.log("is shifting gears!!!") }
  
  
  console.log("Here is your new car!");
}


var jeep = new Car("SUV", "Jeep", 1999, "Black");
var sportscar = new Car("Sportscar", "Ferrari", 2016, "Red");
var eco = new Car("Hybrid", "Prius", 2008, "Green");

console.log(jeep);
console.log(sportscar);
console.log(eco);

sportscar.shift(sportscar.type);
