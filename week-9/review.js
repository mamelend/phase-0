// SOLO'd this one!

// Release 2: Pseudocode
// It would ake most sense to create an object of properties since we want to be able to 
// easily iterate through the structure and have items that also have a value (quantity)
// Create a new list by defining a method that...
// IF items doesn't exist, create a new property to hold a new key and value pair.
// IF item does exist, pass in arguements to update method.
// IF item exists, remove it from the list.
// += the argument quantity to the value of the object.
// Print out the list in a clean way.

// Release 3: Initial Solution

// Create a new list
// var list = {

// 	// Add an item with a quantity to the list
// 	add_to_list : function(itemname, qty) {
// 		list[itemname] = qty;

// 	},

// 	// Remove an item from the list
// 	remove_from_list : function(itemname) {
// 		delete list[itemname];
// 	},

// 	// Update quantities for items in your list
// 	update_list : function(itemname, qty) {
// 		list[itemname] += qty;

// 	},

// 	// Print the list (Consider how to make it look nice!)
// 	print_list : function() {
// 		i=0;
// 		console.log("Here is your grocery list!")
// 		for (item in list) {
// 			i++;
// 			if (i >= 5) {
// 				console.log(item + ": " + list[item]);
// 			}
// 		}
// 	}
// }

// Release 4: Refactor
var list = {

	// Add an item with a quantity to the list
	add_to_list : function(itemname, qty) {
		list[itemname] = qty;

	},

	// Remove an item from the list
	remove_from_list : function(itemname) {
		delete list[itemname];
	},

	// Update quantities for items in your list
	update_list : function(itemname, qty) {
		list[itemname] += qty;

	},

	// Print the list (Consider how to make it look nice!)
	print_list : function() {
		i=0;
		console.log("Here is your grocery list!")
		for (item in list) {
			i++;
			// Update conditional if any other methods are added to this object
			if (i >= 5) {
				console.log(item + ": " + list[item]);
			}
		}
	}
}

// Driver Code
list.add_to_list("sweets", 10);
list.add_to_list("greens", 15);
list.add_to_list("root veggies", 20);
list.add_to_list("fruits", 20);
list.update_list("fruits", 5);
list.add_to_list("ICE CREAM", 100000);
list.remove_from_list("sweets");
list.print_list();

/* Release 5: Reflect

What concepts did you solidify in working on this challenge? 
(reviewing the passing of information, objects, constructors, etc.)

I'm glad I had the opportity to revisit JS before phase1, I feel much more confident with creating and defining 
object methods within the object. This solution was pretty simplistic however I enjoyed transforming my Ruby
solution into a JS one, and in this case, JS's object works just as well as a Ruby hash, if not better.

What was the most difficult part of this challenge?

This challenge was pretty simplistic, I think I could have challenged myself a bit more and maybe added some 
extra features. I did run into some challenge with wanting to iterate through non-function variables in the print_list
method, and there doesn't seem to be an easy way to do that in JS.

Did an array or object make more sense to use and why?

An object made so much more sense given the whole property value dynamic. It was easy to store properties and their
subsequent values and iterate through them.

*/