// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
myName = "Miguel";
console.log(myName.length)

// Favorite food exercize
console.log("What is your favorite food?")
favFood = prompt("What is your favorite food?","")
console.log("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (x = 1; x < 100; x++) {
	if (x % 3 == 0 && x % 5 == 0)
	  console.log("FizzBuzz");
	if (x % 3 == 0)
	  console.log("Fizz");
	else if (x % 5 == 0)
	  console.log("Buzz");
	else console.log(x);
}

// Functions

// Complete the `minimum` exercise.

function min(a, b){
	if (a > b){
		return b;
	}
	else if (a < b){
		return a;
	}
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Miguel",
  age: 30,
  fav_foods: ["rice and beans", "hummus",
           "avocado"],
   quirk: "I'm a massive fan of dawson's creek, like expanded universe type stuff!"
}

console.log(me["name"])
console.log(me["age"])
console.log(me["fav_foods"])
console.log(me["quirk"])
