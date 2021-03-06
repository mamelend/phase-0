// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Pamela Antonow
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution
// for (var pos in voteCount) {
// //console.log(pos);
//   for (var keys in votes) {
//     //Check for president
//     //console.log(votes[keys].president);
//     if (!voteCount[pos].hasOwnProperty(votes[keys][pos]))    {
// //       console.log("new " + votes[keys].president)
//       voteCount[pos][votes[keys][pos]] = 1;
// //       console.log(voteCount.president);
//     }
//     else if (voteCount[pos].hasOwnProperty(votes[keys][pos])) {
//       voteCount[pos][votes[keys][pos]] += 1;
//       //console.log("match " + voteCount.president[keys])
//     }
//   }
// }


// for (var pos in officers){
//   var highest = "";
//   var highestNumber = 0;
//   for (var name in voteCount[pos]) {
//     //console.log(voteCount[pos][name]);
//     if (voteCount[pos][name] > highestNumber){
//       highestNumber = voteCount[pos][name];
//       highest = name;
//     }
//     else {
//       continue;
//     }
    
//   }
//   officers[pos] = highest;
// }
//console.log(voteCount);

// __________________________________________
// Refactored Solution
for (var pos in voteCount) {
  for (var keys in votes) {
    if (!voteCount[pos].hasOwnProperty(votes[keys][pos]))    {
      voteCount[pos][votes[keys][pos]] = 1;
    }
    else if (voteCount[pos].hasOwnProperty(votes[keys][pos])) {
      voteCount[pos][votes[keys][pos]] += 1;
    }
  }
}

for (var pos in officers){
  var highest = "";
  var highestNumber = 0;
  for (var name in voteCount[pos]) {
    if (voteCount[pos][name] > highestNumber){
      highestNumber = voteCount[pos][name];
      highest = name;
    }
    else {
      continue;
    }
    
  }
  officers[pos] = highest;
}

/*__________________________________________
// Reflection

What did you learn about iterating over nested objects in JavaScript?

Wooooooo, that was tough. I learned that in order to access specific objects within
objects you need to use nested for loops. It took a long while. but I eventually learned
how to access each value. It isn't very straight forward, but using console.log() to display
values was extremely helpful

Were you able to find useful methods to help you with this?
hasOwnProperty helped me to detemrine whether an object was already a property of 
another object.


What concepts were solidified in the process of working through this challenge?
So many! Iteration, conditionals, javascript basic syntax, and def object accessing.

// __________________________________________
*/

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)