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

#Phase 2
def my_min2(array)
    min = array[0]
    array.each do |ele|
        if ele < min
            min = ele
        end
    end
    return min
end

#the time complexity for phase 2 is O(n)

#Largest subsum

#Phase 1

list1 = [5, 3, -7] #8
list2 = [2, 3, -6, 7, -6, 7] #8
list3 = [-5, -1, -3] #-1

def subsum1(array)
    sub_arr = []
    sum_arr = []
    (0...array.length).each do |start_index|
        (start_index...array.length).each do |end_index|
            sub_arr << array[start_index..end_index]
        end
    end
    sub_arr.each do |ele|
        sum_arr << ele.sum
    end
    sum_arr.max
end

#time complexity of subsum phase 1 is O(n^2)
