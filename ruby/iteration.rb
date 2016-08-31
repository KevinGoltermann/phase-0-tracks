# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters

# letters.each do |letter|
# 	new_letters << letter.next
# end

# puts "After .each call:"
# p letters
# p new_letters


# numbers = {1 => "one", 2 => "two", 3 => "three"}

# numbers.each do |digit, word|
# 	puts "#{digit} is spelled out as #{word}"
# end

# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# letters.map do |letter|
# 	puts letter
# 	letter.next
# end

# puts "After .map call:"
# p letters

array = ["blue", "yellow", "red", "orange", "purple", "black"]

hash = {
	"Nader" => 251,
	"Clinton" => 437,
	"Gore" => 257,
	"Kaine" => 537,
	"Trump" => 193
}

array.each do |color|
	puts "#{color} is a color. Cool.".capitalize
end

hash.each do |name, rbi|
	puts "#{name} is currently batting #{rbi}"
end

# Print array before modifrication
puts array

# Modify that array
array.map! do |color|
	color.insert(-1, "-ish")
end

puts array

# Doing the last thing


# Number one - array
array.delete_if {|color| color == "red-ish"}

puts "After deleting one:"
puts array

# Number one - hash
"Puts before:"
puts hash
hash.delete_if {|name, rbi| rbi < 300}
puts "After"
puts hash

# Number two - Array
puts "Before:"
puts array
array.keep_if {|color| color == "black-ish"}
puts "After"
puts array


# Number two - Hash
hash["Trump"] =245
hash["Warren"] = 245 
puts "before"
puts hash
hash.keep_if {|name, rbi| rbi > 300}
puts "after"
puts hash

# Number three - Array
array << "blue-ish"
array << "green"
array << "tangerine"

puts "before"
puts array
new_array = array.reject {|color| color == "blue-ish"}
puts "after"
puts new_array

# Number three - Hash
hash["Trump"] =245
hash["Warren"] = 245 
puts "before"
puts hash
new_hash = hash.select {|name, rbi| rbi > 300}
puts "after"
puts new_hash

# Number four - Array
puts "before"
puts array
new_array == array.drop_while {|color| color.include?("-ish")}
puts 'after'
puts new_array

# Number four - Hash
puts "before"
puts hash
new_hash = hash.reject {|name, rbi| rbi < 300}
puts "after"
puts new_hash



