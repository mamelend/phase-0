// Design Basic Game Solo Challenge

// This is a SOLO challenge

// Your mission description: The goal is to design a game which you can not win, and in fact have no freedoms. All movement
// of the player character is restricted. You start off with a list of a few options and they all result in punishment of some form.
// Overall mission: Depict what it feels like to fight for the freedom to live as an indigenous enviromental activist in Honduras.
// Goals: Spread awareness of the murder of innocent people.
// Characters: Indigenous Enviromental Activist, Militarized Police, Mercenaries, poison, cancer.
// Objects: 
// Functions: 

// Inspiration: 
// http://www.democracynow.org/2015/4/22/how_many_more_116_environmental_defenders
// https://www.globalwitness.org/campaigns/environmental-activists/how-many-more/

/* Pseudocode
create a object that holds several properties that describe truths about the exploitation of the enviroment and indigeous folk.
create multiple objects that hold properties that describe biases and exploitive characteristics.
allow the user to play through a system of choices. Choices will lead to outcomes based on factual data.
create a function 

*/

// Initial Code

// var player = {
//   motivations: [
//   "the Agua Zarca hydro-dam on the Gualcarque River, which threatens to cut off a vital water source for hundreds of indigenous Lenca people.",
//   "my friends were killed by gunmen attacking an anti-mining protest in northern Honduras. They had received death threats warning them to desist from their efforts to protect the environment.",
//   "one hundred sixteen environmental defenders were murdered last year, mostly in Latin America.",],
//   weapon: "words",
//   health: 10,
//   damage: 0,
// };

// var mpOfficer = {
//   motivations: [
//   "The only thing that matters is making it home at the end of the day.",
//   "aaaa","bbbbb"],
//   name: "Military Police Officer",
//   weapon: "assualt rifle",
//   health: 100,
//   bodyarmor: 100,
//   damage: 40,
// };

// var merc = {
//   motivations: [
//   "$$$.",
//   "$$$.","$$$."],
//   name: "A man for hire",
//   weapon: "knife",
//   health: 60,
//   bodyarmor: 0,
//   damage: 30,
// };

// var engage = function(player, foe) {
//   console.log("You approach the " + foe.name + " and prepare your " + player.weapon + ".");
//   console.log("You say, " + player.motivations[Math.floor(Math.random()* 3)]);

//   console.log("The " + foe.name + " turns to look at you.");
//   console.log(foe.motivations[Math.floor(Math.random()* 3)]);
//   console.log("The " + foe.name + " aims his " + foe.weapon + "!");

//   if (foe.damage >= player.health){
//     console.log("You have been slain!");
//   }
// }


// console.log("Against the lush backdrop of the Sierra Madre mountain range of Central America, you find serenity in the (abundance of life) while en route to a local protest against illegal logging and the chemical pollution of local water systems by a multinational energy conglomerate." + "\n")

// console.log("After climbing up a small hill and turning a bend, you see activity in several directions. Over by the bank of the river is a young mother who seems to be arguing with a police officer. Over by the burned dow brush is a man in a suit surveying the land.")


// engage(player, mpOfficer);

//Print out a motivation at random.
//console.log(player.motivations[Math.floor(Math.random()* 3)]);

// Refactored Code

var sol1 = {
name: "Solid Snake",
class: "Infiltrator",
weapon: "Assault Rifle",
hp: 25,
str: 10,
active: true,
loot: [""],
};

var sol2 = {
name: "Luger Wolf",
class: "Marksman",
weapon: "Sniper Rifle",  
hp: 15,
str: 20,
active: true,
loot: [""],
};

var sol3 = {
name: "Topaz Moon",
class: "Grenadier",
weapon: "Grenades",
hp: 20,
str: 15,
active: true,
loot: [""],
};

var boss = {
  name: "Metal Gear Tex(t)",
  class: "War Machine",
  hp: 25,
  str: 10,
  active: true,
}

var loot = ["a magnum!", "some hand grenades!", "the night vision goggles!", "some tasty rations!", "$5000 USD in local currency!"];

function command() {
  console.log("Please select one of the men under your command:");
  console.log(sol1.name + " the " + sol1.class + ".\n" + 
              sol2.name + " the " + sol2.class + ".\n" +
              sol3.name + " the " + sol3.class + ".\n");

  var choice = prompt();
  if (choice == sol1.name) {
    console.log("You've selected " + choice);
    battle(sol1, boss);
  } else if (choice == sol2.name) {
    console.log("You've selected " + choice);
    battle(sol2, boss);
  } else if (choice == sol3.name) {
    console.log("You've selected " + choice);
    battle(sol3, boss);
  } else {
    command();
  }
}

function battle(avatar, boss) {
  if (avatar.active == false) {
    console.log("You have been defeated! Game Over.");
    return;
  }
  var damage = Math.floor(Math.random() * (avatar.str - 1 + 1)) + 1;
  console.log(avatar.name + " aims his " + avatar.weapon + " and deals " + damage + " damage!");             
  //console.log(boss.name + " HP: " + boss.hp);
  boss.hp -= damage;
  console.log(boss.name + " HP: " + boss.hp + "\n");
  if (boss.hp <= 0) {
    console.log("You have won!");
    console.log("You've been awarded " + loot[Math.floor(Math.random() * (3 - 0 + 1)) + 0]);
    return;
  }
  
  var bdamage = Math.floor(Math.random() * (boss.str - 1 + 1)) + 1;
  console.log(boss.name + " returns fire and deals " + bdamage + " damage to " +               avatar.name + "!");
  //console.log(avatar.name + " HP: " + avatar.hp);
  avatar.hp -= bdamage;
  console.log(avatar.name + " HP: " + avatar.hp + "\n");
  if (avatar.hp <= 0) {
    avatar.active = false;
    battle(avatar, boss);
  }
  else {
    battle(avatar, boss);
  }
  
}

function scenario_one() {
  console.log("After an intense battle, " + boss.name + " is almost defeated.\nSend in a solider to finish him off!\n");
  var avatar = command();
}

scenario_one();

/* Reflection
What was the most difficult part of this challenge?
I began with a huge scope and decided to dial is bac to a more simple game.


What did you learn about creating objects and functions that interact with one another?
I've touched a bit on changing values.


Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I started over from scratch so I didn't get to implement a lot of new features.


How can you access and manipulate properties of objects?
change the state, increment integer values, I wanted to implement poping and pushing to arrays.


*/