require 'sqlite3'

require 'chronic'

db = SQLite3::Database.new("flight_tracker.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS flights(
		id INTEGER PRIMARY KEY,
		flight_number INT,
		day TEXT,
		departure VARCHAR(255),
		arrival VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)
