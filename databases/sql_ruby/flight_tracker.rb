require 'sqlite3'

db = SQLite3::Database.new("flight_tracker.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS flights(
		id INTEGER PRIMARY KEY,
		flight_number INT,
		day TEXT,
		departure VARCHAR(255),
		arrival VARCHAR(255)
	);
SQL

db.execute(create_table_cmd)

def add_flight(db, flight_number, day, departure, arrival)
	db.execute("INSERT INTO flights (flight_number, day, departure, arrival) VALUES (?, ?, ?, ?)", [flight_number, day, departure, arrival])
end

def delete_flight(db, delete)
	db.execute("DELETE FROM flights WHERE flight_number = '#{delete}'")
	puts "Your flight #{delete} has been removed."
end

def flight_list(db)
	puts "Here are your scheduled flights:"
	list = db.execute("SELECT * FROM flights")
	list.each do |flight_number|
		puts "#{flight_number}" #d------------------
	end
end



puts "Welcome to Flight Tracker! What would you like to do?"
exit = FALSE
until exit == TRUE
	puts "-"*60
	puts "Add a flight ==> 1"
	puts "Delete a flight ==> 2"
	puts "View all of your scheduled flights ==> 3"
	puts "Done with Flight Tracker ==> 'done'"
	input = gets.chomp.downcase
	if input == 'done'
		puts "Thanks. Come back with your next flights!"
		exit = TRUE
	
	elsif input == "1"
		puts "Flight number:"
		flight_number_addition = gets.to_i
		puts "Day of flight?"
		flight_day_addition = gets.chomp
		puts "Leaving from which city?"
		flight_departure_addition = gets.chomp
		puts "And where is the flight landing?"
		flight_arrival_addition = gets.chomp
		add_flight(db, flight_number_addition, flight_day_addition, flight_departure_addition, flight_arrival_addition)
		puts "Your flight has been added!"
	
	elsif input == "2"
		puts "Please enter the flight number you would like to delete:"
		flight_delete_number = gets.to_i
		delete_flight(db, flight_delete_number)
		puts "Your flight has been deleted!"
	
	elsif input == "3"
		flight_list(db)
	
	else
		puts 'Please enter the the number that corresponds to your choice.'
	end
end
		












