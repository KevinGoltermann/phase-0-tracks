highway = {
    car_1: {
        car_type: 'SUV',
        passengers: [
            "Joe", 
            "Kevin"
        ]
    },
    car_2: {
        car_type: 'Truck',
        passengers: [
            "Terry", 
            "Kerry"
        ]
    },
    car_3: {
        car_type: 'Sports',
        passengers: [
        	"Bob",
        	"Rob"
        ]
    }
}

puts highway

puts "test 1"
puts highway[:car_3][:passengers][1]

puts "test 2"
highway[:car_3][:passengers].push("Tom")
puts highway

puts "test 3"
puts highway[:car_2][:car_type]