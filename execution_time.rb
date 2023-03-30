require 'benchmark'

list = [0, 3, 5, 4, -5, 10, 1, 90]
# Phase 1
def my_min1(array)
   sorted = false
   while !sorted
    sorted = true 
    (0...array.length-1).each do |i|
        if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            sorted = false 
        end
    end
   end 
   return array[0]
end

# The time complexity for Phase 1 is O(n^2)

p my_min(list) # -5