# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: 
strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

def longest_common_prefix(strings)
  split_strings = []
  output_string = ""
  strings.map do |string|
    split_strings << string.split('')
  end

  split_strings.each_with_index do |word, index|
    word.each_with_index do |letter, i|
      loop do
        if word[i] == split_strings[index + 1][i]
          output_string << letter
          require 'pry'; binding.pry
        elsif word[i] != split_strings[index + 1][i]
          break
        end
      end
    end
  end
  # output_string
  # require 'pry'; binding.pry
end

p longest_common_prefix(strs)