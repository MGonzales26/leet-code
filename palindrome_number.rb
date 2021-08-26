# Given an integer x, return true if x is palindrome integer.

# An integer is a palindrome when it reads the same backward as forward. For example, 121 is palindrome while 123 is not.
# Example 1:

# Input: x = 121
# Output: true
# Example 2:

# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:

# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
# Example 4:

# Input: x = -101
# Output: false
 

# input = 121
# input = -121
# input = -10
# input = 101
# input = 10
input = 12345654321
input = 1234554321

def palindrome_number(number)
  status = true
  seperated = number.to_s.split("")
  seperated.each_with_index do |num, i|
    # require 'pry'; binding.pry
    if num != seperated[-(i + 1)]
      status = false
      break
    end
  end
  status
end

p palindrome_number(input)