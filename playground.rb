# col = (1..4).collect do |i|
#   i if i.even?
# end

# p col

# def find_first_long_named_sister #longer than 4 characters
#   sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]

#   # sisters.each do |sister|
#   #   return sister if sister.length > 4
#   # end
#   sisters.find do |sister|
#     sister.length > 4
#   end
# end

# p find_first_long_named_sister

# def find_all_nums_divisible_by_3
#   numbers = [1,2,3,4,5,6,7,8,9]
#   # div_by_3 = []
#   numbers.find_all do |number|
#     number % 3 == 0
#   end
# end

# p find_all_nums_divisible_by_3

# # Example 1
# x = 10
# puts x
# puts y

# # Example 2
# x = 10
# puts x
# puts y
# y = 20

# # Example 3
# x = 10
# def say_hello
#   puts "Hello World!"
# end
# puts x

# # Example 4
# def print_variable
#   x = 4
#   puts x
# end
# x = 2
# print_variable


# # Example 5
# def print_variable
#   x = 4
# end
# x = 2
# print_variable
# puts x

# Example 6
# def print_variable
#   x = 10
#   puts x
# end
# print_variable
# puts x

# # Example 7
# def print_variable
#   x = 4
#   puts x
# end
# print_variable

# Example 8
# def print_variable
# x = 4
# puts x
# end
# x = 2
# print_variable

# # Example 9
# def print_variable
# x = 4
# end
# x = 2
# print_variable
# puts x

# # Example 10
# def print_variable(x)
# puts x
# end
# print_variable(4)

# # Example 11
# def print_variable(x)
#   puts x
# end
# x = 4
# print_variable(x)

# Example 12
# def print_variable(x)
#   puts x
# end
# print_variable(2)
# puts x

# # Example 13
# def print_variable(x)
# x = 4
# puts x
# end
# print_variable(2)
# puts x

# # Example 14
# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   total += number
# end
# p total

# # Example 15
# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   pizza = "yummy!"
#   total += number
# end
# p pizza

# # Example 15
# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   total += number
# end
# p number

# # Example 17
# numbers = [1,2,3]
# number = 0
# numbers.each do |number|
#   puts number
# end

# # Example 18
# numbers = [1,2,3]
# numbers.each do |number|
#   number = 0
#   puts number
# end

# # Example 19
# numbers = [1,2,3]
# def number
#   0
# end
# numbers.each do |number|
#   puts number
# end
# def print_variable
#   puts y
# end

# y = 20

# print_variable

# class Person
#   def initialize(name)
#     @name = name
#   end
  
#   def greeting
#     "Hello! My name is #{@name}. I am a #{@job}."
#   end
# end

# @job = "Painter"
# person = Person.new("Bob Ross")
# p person.greeting
# p @name


# require 'pry'; binding.pry

class Person
  attr_reader :name,
              :age

  def initialize(name, age)
    @name = name
    @age  = age
  end
end

kardashians = []

kardashians << Person.new("Kourtney", 39)
kardashians << Person.new("kim", 37)
kardashians << Person.new("Kris", 62)
kardashians << Person.new("Khloe", 33)

# p kardashians.min_by { |kardashians| kardashians.age }
# p kardashians.max_by { |kardashians| kardashians.name.length }
# p kardashians.sort_by { |kardashians| kardashians.age }

# p kardashians.all? do |kardashian|
#   kardashian.char.first.downcase == "k"
# end

# under_18 = kardashians.any? do |kardashian|
#   kardashian.age < 18
# end

# p under_18

last_letter_sort = kardashians.sort_by { |kardashian| kardashian.name.chars.last }
p last_letter_sort.reverse

not_kris_and_younger_than_38 = kardashians.find_all do |kardashian|
  kardashian.name != "Kris" && kardashian.age < 38
end

p not_kris_and_younger_than_38.count > 1