#!/usr/bin/env ruby

#This program should output the numbers 1 through 100, however:
#–  If evenly divisible by 3, print Fizz –  If evenly divisible by 5, print Buzz
#–  If evenly divisible by 3 and 5, print FizzBuzz –  Otherwise, print out the number

# There needs to be an array 1-100, then the method should run on the entire array. So I probably shouldn't make a class,
# but should make a method on class array, this could also be done recursively or done in a loop.

number = 1.0
while number < 101
  if number%5 == 0 && number%3 == 0
    puts "FizzBuzz"
  elsif
    number%5 == 0
    puts "Buzz"
  elsif
    number%3 == 0
    puts "Fizz"
  else
    puts number
  end
  number += 1
end




