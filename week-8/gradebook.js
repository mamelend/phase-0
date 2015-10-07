/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:] Allison
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
var gradebook = {
  Joseph: new Object(),
  Susan: new Object(),
  William: new Object(),
  Elizabeth: new Object(),
  addScore: function(name, score) {
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name){
    var sum = 0;
    for (var i in gradebook[name].testScores) {
      sum += gradebook[name].testScores[i];
    }
    return sum / gradebook[name].testScores.length;
  }
}

function average(numbers){
  var sum = 0;
  for (var i in numbers) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];


// __________________________________________
// Refactored Solution

var gradebook = {
  addScore: function(name, score) {
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name){
    var sum = 0;
    for (var i in gradebook[name].testScores) {
      sum += gradebook[name].testScores[i];
    }
    return sum / gradebook[name].testScores.length;
  }
}

function average(numbers){
  var sum = 0;
  for (var i in numbers) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}

// Iterate through each student and add to gradebook a new object called (student name) 
// that contains a key named testScores with an array that matches the respective score array.
for (var i in students) {
var assign = {testScores: scores[i]};
gradebook[students[i]] = assign;
}


// __________________________________________
// Reflect
/*
Q: What did you learn about adding functions to objects?

A: Adding functions to objects is fun! I think that makes them methods. 

Q: How did you iterate over nested arrays in JavaScript?

A: I used the for (x in y) loop. It worked well since I didn't know how many grades I
was going to need to iterate through in the scores array. 

Q: Were there any new methods you were able to incorporate? If so, what were they and 
how did they work?

A: I was able to push a new score into the arrays, I hadn't used that one too much before. 

*/



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)