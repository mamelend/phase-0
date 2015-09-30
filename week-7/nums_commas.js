// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Julian Lesse

// Pseudocode
/*Create a function name named separate comma that takes an integer parameter named number.
  Convert number to a string and set string
  counter = string.length
  WHILE counter != -1
    place a comma after 3rd index starting from the last unless the     length is evenly divisble by 3.
    decrement counter by 1
  return string
end function
*/

// Initial Solution
// function separate_comma(number){
//   var array = number.toString().split("");
//   array.reverse();
//   console.log(array);
//   var comma_count = Math.floor(array.length / 3);
//   console.log(comma_count)
//   if (array.length % 3 === 0 ) {
//     comma_count = comma_count - 1;
//   }  
//   var comma_pos = 3;
//   while (comma_count > 0) { 
//       array.splice(comma_pos, 0, ",");
//       comma_pos += 4;
//       comma_count--;
//     }
//   return array.reverse().join("");
// }


// Refactored Solution
function separate_comma(number){
  var array = number.toString().split("");
  array.reverse();
  //console.log(array);
  var comma_count = Math.floor(array.length / 3);
  //console.log(comma_count)
  if (array.length % 3 === 0 ) {
    comma_count = comma_count - 1;
  }  
  var comma_pos = 3;
  while (comma_count > 0) { 
      array.splice(comma_pos, 0, ",");
      comma_pos += 4;
      comma_count--;
    }
  return array.reverse().join("");
}

// Your Own Tests (OPTIONAL)
console.log(separate_comma(123456));
console.log(separate_comma(1234567));
console.log(separate_comma(12345678));
console.log(separate_comma(123456789));

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
I did approach this problem differently. It took me a while to figure out what I had already figured out when doing the problem in Ruby
two weeks ago. I guess the trick is not to tie the iteration to the size of the array/string. But begin by defining how many times you 
need to iterate through the number and define where you want to do that.

What did you learn about iterating over arrays in JavaScript?
It is similar to Ruby. The syntax is not as natural, not as easy.

What was different about solving this problem in JavaScript?
Not much! I approached it from the wrong perspective and spent too much time on it.

What built-in methods did you find to incorporate in your refactored solution?
Splice worked like insert/split and join worked as expected. Math.floor helped round to the nearest bottom integer.
*/
