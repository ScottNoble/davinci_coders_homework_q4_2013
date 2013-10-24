#!/usr/bin/env ruby

#This program should output the numbers 1 through 100, however:
#–  If evenly divisible by 3, print Fizz –  If evenly divisible by 5, print Buzz
#–  If evenly divisible by 3 and 5, print FizzBuzz –  Otherwise, print out the number
#fizzbuzz using a loops

number = 1
while number <= 100
  if number % 5 == 0 && number % 3 == 0
    puts "FizzBuzz"
  elsif
    number % 5 == 0
    puts "Buzz"
  elsif
    number % 3 == 0
    puts "Fizz"
  else
    puts number
  end
  number += 1
end




