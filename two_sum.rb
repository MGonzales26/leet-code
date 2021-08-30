# =begin
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].

# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]

# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]
 
# Constraints:

# 2 <= nums.length <= 104
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.
 

# Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

# sudo code:
# iterate over the array

# add each number to the others

# when sum equals target stop and return indecies of integers
# =end


# def two_sum(nums, target)
#   result = []
#   nums.each_with_index do |num1, index1|
#     break if result[1]
#     nums.each_with_index do |num2, index2|
#       next if index1 == index2
#       break if result[1]
#       if num1 + num2 == target
#         result << nums[index1]
#         result << nums[index2]
#       end
#     end
#   end
#   result
# end

# nums = [2,7,11,15]
# target = 26
# require 'pry'; binding.pry
# two_sum(nums, target)


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}


# Input: nums = [3,3], target = 6
# Output: [0,1]

#each with index
#nested each with index to insure the integer doesn't add to itself

# Input: 
nums = [3,2,4], target = 6
# Output: [1,2]

def two_sum(nums, target)
  nums.each_with_index do |num, i|
    nums.each_with_index do |num2, i2|
      require 'pry'; binding.pry
      if (i != i2) && (num + num2 = target)
        solution = [i, i2]
        break
      end
    end
  end
  solution
end

p two_sum(nums, target)
