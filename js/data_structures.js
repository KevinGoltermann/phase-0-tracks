var colors = ["blue", "orange", "red", "black"];
var names = ["Ed", "Carrot", "Captain", "Tom"];

colors.push("green");
names.push("Sky");

console.log("The horse named " + names[Math.floor(Math.random() * names.length)] + " is " + colors[Math.floor(Math.random() * colors.length)])


function Build(type, make, year, engine) 
{     console.log("Car specifics:", this)       

	this.type = type;    
	this.make = make;    
	this.year = year;    
	this.engine = engine;     
	this.rev = function() {     
		console.log("vrooom!!");};    

console.log("Lets build a car...");    
 }   

console.log("vehicle initialization complete...")   

var car = new Build("Truck", "Chevy", 2016, "V8");    

console.log(car.type);
console.log(car.make);
console.log(car.year);
console.log(car.engine);


console.log("Our car is tough:");    
car.rev()
console.log("********")


console.log("Let's build another car ...");
var anothercar = new Build("SUV", "BMW", 2015, "Diesel");
console.log(anothercar.type);
console.log(anothercar.make);
console.log(anothercar.year);
console.log(anothercar.engine);
console.log("This new car can rev, too:");
anothercar.rev();

