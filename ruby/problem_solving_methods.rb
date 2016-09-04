#---------Release 0--------#
def  search_array (array, number)
  counter = 0
  index = []
  array.each do |value|
    index << counter if value == number
    counter += 1
  end
index.empty? ? nil : index
end


#-------Release 1---------#
def fib(n)
	array = [0,1]
	while array.length < n
		array << array[-1] + array[-2] 
	end 
	return array
end


#--------Release 2----#
def bubble_sort(list)
  return list if list.size <= 1 # only sorts the list if there is more than one integer in the list
  
  loop do # start looping through list
    swapped = false # no values have been swapped yet
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1] # swap if current value isgreater than value to left
        list[i], list[i+1] = list[i+1], list[i] # storing values to be swapped
        swapped = true
      end
    end
    break unless swapped
  end
  list
end





