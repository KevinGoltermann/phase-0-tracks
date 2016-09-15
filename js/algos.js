// Release 0 
// -searches through given array
// -compares the length of each phrase/word
// -return the longest phrase/word

//Creating array so we can search it later
/*var array = ["long phrase","longest phrase","longer phrase"];
var array_2 = ["ok", "hello", "no wayyyy", "here"]
var array_3 = ["one", "three", "twenty five", "two"]

//Creating a variable for the function with the array as the arguement
var find = function(array){
//Sorts the strings by their length and compares it to the ones next to it, also being set as a variable   
    var longest = array.reduce(function(a,b){
    	return (a.length > b.length) ? a : b;
  		});
    
//Telling the method to print the 'longest' variable after it has searched through the array and found the longest word.
  console.log(longest);
}

//Calling the method, with the array we created first as the arguement
find(array);
find(array_2);
find(array_3);

// Release 1 
//Iterate through keys and values
//Compare keys from both objects
//If keys are the same, do the same for the values
//If there is a match, return true
//If no match, return false

//Setting up function with the two objects as parameters
function match(object_1, object_2) {
  for(var i = 0; i < Object.keys(object_1).length; i++) {
    
//For object 1, collects and sets keys and values
    for(var key in object_1) {
      var value = object_1[key];
      var full = (key + value);
    
//For object 2, collects and sets keys and values
    for (var key_2 in object_2) {
      var value_2 = object_2[key_2];
      var full_2 = (key_2 + value_2);
    
//Checks for a match
    if (full === full_2) {
      
      return true;
    
    } else {
     
      return false;
    }
    }
    } 
  }
}

console.log(match({name: "Kevin", age: 23}, {name: "Kevin", age: 2}));
console.log(match({name: "Joe", age: 1}, {name: "Steve", age: 100}))
*/

//Release 3
















