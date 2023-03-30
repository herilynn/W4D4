

 # Phase 2
 # the time complexity is at least O(n^3)

 def second_anagram?(str1, str2)
    arr1 = str1.split('')
    arr2 = str2.split('')
    
    arr1.each do |ele| # n
        if arr2.find_index(ele) #n
            i = arr2.find_index(ele)
            arr2.delete(arr2[i]) #n
        end
    end
   
    if arr2.empty?
        return true
    end

    false 

 end


#  p second_anagram?('rat', 'tar') # true
#  p second_anagram?('dog', 'tar') # false
#  p second_anagram?('heart', 'computer') # false
#  p second_anagram?('wooden', 'donowe') # true

# Phase 3

def third_anagram?(str1, str2)
    alphabet = ("a".."z").to_a 
    arr1 = str1.split('')
    arr2 = str2.split('')

    sorted = false
    while !sorted
        sorted = true 
        (0...arr1.length-1).each do |i|
            if alphabet.index(arr1[i]) > alphabet.index(arr1[i+1])
                arr1[i], arr1[i+1] = arr1[i+1], arr1[i]
                sorted = false 
            end
        end
    end

    while !sorted
        sorted = true 
        (0...arr2.length-1).each do |i|
            if alphabet.index(arr2[i]) > alphabet.index(arr2[i+1])
                arr2[i], arr2[i+1] = arr2[i+1], arr2[i]
                sorted = false 
            end
        end
    end

    arr1 == arr2 
end

 p third_anagram?('rat', 'tar') # true
 p third_anagram?('dog', 'tar') # false
 p third_anagram?('heart', 'computer') # false
 p third_anagram?('wooden', 'donowe') # true


# Phase 4
# The time complexity is O(n)

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char do |char|
        hash1[char] += 1
    end

    str2.each_char do |char|
        hash2[char] += 1
    end

    return true if hash1 == hash2 

    false
end

#  p fourth_anagram?('rat', 'tar') # true
#  p fourth_anagram?('dog', 'tar') # false
#  p fourth_anagram?('heart', 'computer') # false
#  p fourth_anagram?('wooden', 'donowe') # true


def h_anagram?(str1, str2)
    arr1 = str1.split('')
    arr2 = str2.split('')

    arr1.all? { |el| arr2.include?(el) && arr2.length == arr1.length }
end 


# p h_anagram?('rat', 'tar') # true
# p h_anagram?('dog', 'tar') # false
# p h_anagram?('heart', 'heartache') # false
# p h_anagram?('wooden', 'donowe') # true