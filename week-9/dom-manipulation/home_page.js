// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ]. Nathan Luo


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:
document.getElementById('release-0').className = "done";



// Release 2:
document.getElementById('release-1').style.display = "none";



// Release 3:
document.getElementsByTagName('h1')[0].innerHTML= "I finished release 2";



// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:
var arr = document.getElementsByClassName('release-4');
for (var i = 0; i < arr.length; i++){
    arr[i].style.fontSize = "2em";
}
// This works too:
// var arr = document.getElementsByClassName('release-4');
// for (var i in arr){
//     arr.item(i).style.fontSize = "2em";
// }

// Release 6: Append HTML
var hiddenText = document.getElementById('hidden');
document.body.appendChild(hiddenText.content);



