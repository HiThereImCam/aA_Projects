=begin
# my_min
# Given a list of integers find the smallest number in the list.

# Time Complexity is 0(n^2)
def my_min(arr)

    arr.each_with_index do |num_1, idx_1|
        
        arr.each_with_index do |num_2, idx_2|
            # next if num_1 == num_2
            break if num_1 > num_2
            return num_1 if idx2 == arr.length - 1
        end
            
    end
    
end



# Example:
#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
my_min(list)  # =>  -5
# Phase I
# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def faster_min(arr)
    smallest = arr[0]
    
    (1...arr.length).each do |i|
        if smallest < arr[i]
            smallest = arr[i]
        end
    end
    smallest
end

same_list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
faster_min(same_list)
# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?
# Time complexity 0(n)

def contiguous_subsum(arr)
    output = []
    arr.each_with_index do |num_1, idx_1| #0 1
        sub_arr = []  
        sub_arr << num_1
        arr.each_with_index do |num_2, idx_2| # 0 1 
            # if idx_2 >= idx_1
            #     output << arr[idx_1..idx_2]
            # end       
                  #[5]
        

        if idx_1 == idx_2       
            output << sub_arr         #output = [[5]]
        else
                sub_arr << num_2     # [5,3]
                output << sub_arr    # [[5], [5,3], [5,3,7]]

            end                      
        end
    end

    int = 0
    output.each do |arr|
        if arr.sum > int
            int = arr.sum
        end
    end
    return int
end

list = [5, 3, -7]   #window of size 2
=end
#Time Complexity = O(m + n^2)

#array lenght is 3, which means n = 3
#we want every combination of n's 3 elements
# [5, 3, -7] first loop 5, 5,3  5,3,7
#                       n, n+1, n+2
#                       3, 3,7 n - 1 because youre removing
#                       n, n+1 n * n! => n!
#
=begin
    
=end

#
# Largest Contiguous Sub-sum
# You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

# Example:

#     list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:

#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:

#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])
# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. Keep a running tally of the largest sum. 
#To accomplish this efficient space complexity, consider using two variables. One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.
# require 'byebug'


    # largest_sum = arr[0]
    # current_sum = 0
    #sum bottom up, individually, pairs trips, quads etc.
    #array check size = arr.length / i
#     i = 0, check each ele individually, i = 0 we check 1 element
# when i = 1, check pairs
#     i = 2 check triples

#     i = 0

   
    
    # [-5,-4,-2]
def faster_sub_sum(arr)
    largest_sum = arr[0]
    sum = arr[0]
    
    (1...arr.length).each do |i|
        sum = 0 if sum < 0
        sum += arr[i]
        largest_sum = sum if largest_sum < sum

    end
    largest_sum

end
[5, 3, -7] => 8
p faster_sub_sum([2, 3, -6, 7, -6, 7]) => 8
[-5, -1, -3] => -1

# Get your story straight, and then explain your solution's time complexity to your TA.