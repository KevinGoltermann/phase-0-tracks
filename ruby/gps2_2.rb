# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash for groceries
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: def add_item
# adds each item to hash and quantity
# output: prints a hash with items and quantity

# Method to remove an item from the list
# input: item to be removed
# steps: using .delete
# output: prints new hash without deleted item

# Method to update the quantity of an item
# input: item and quantity that needs to be updated
# steps: take existing item in hash and update the number 
# output: new hash with updated quantity

# Method to print a list and make it look pretty
# input: puts statement	
# steps: uses hash to print out each item and the respective quantity
# output: prints method with info

#------------Release 1--------------#
def new_hash(food, quantity = 1)
	groceries_list = {}
	food.split.each { |item| groceries_list[item] = quantity}
	groceries_list
end

def add(groceries_list, food, quantity)
	groceries_list[food] = quantity
end

def remove(groceries_list, food)
		groceries_list.delete(food)
end    

def update(groceries_list, food, quantity)
	groceries_list[food]=quantity
end

def nice_print(groceries_list)
	groceries_list.each { |food, quantity| puts "#{quantity} of #{food}" }
  	
end

variable= new_hash('lemonade tomatoes onions ice-cream')
p variable
updated_variable = add(variable, 'ice-cream', 4)
p variable
update(variable, 'lemonade', 2)
p variable
update(variable, 'tomatoes', 3)
p variable
remove(variable, 'lemonade')
p variable
update(variable, 'ice-cream', 1)
p updated_variable
nice_print(variable)
variable

=begin
In this assignemnt I learned that pseudocoding is really nice to rely on when you get stuck. There were multiple times where we got stuck and started to lose our train of thoughts, but were able to look back at the pseudocode and realize what we needed to be accomplishing.

Arrays are nice because they allow to just make an organized list, but hashes were every effective because they allowed us to tie a quantity to a food and then print both of those in a sentence very easily. 

A method returns what is described in its body. In this assignment, we were able to tie multiple methods toether to produce a final product.

You can pass multiple things like blocks, arrays, hashes, variables, and string methods to name a few.

You can pass info between methods by assigning variables and information that has been gathered in ararys and hashes.

One concept that was solidified was actually using pseudocoding. I tend to pass it up alot of the time, but this instance made me realize its really important. One concept I still have to work on is using arrays and hashes withing methods. I'm comfortable using them by themselves, but I sometimes still get lost when I have to use them together or in methods. 



=end





