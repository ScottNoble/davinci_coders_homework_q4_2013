#!/usr/bin/env ruby

#This program should output the numbers 1 through 100, however:
#–  If evenly divisible by 3, print Fizz –  If evenly divisible by 5, print Buzz
#–  If evenly divisible by 3 and 5, print FizzBuzz –  Otherwise, print out the number

# There needs to be an array 1-100, use the each method to evaluate each for fizzbuzz.
# but should make a method on class array, this could also be done recursively or done in a loop.

# why do I get an undefined error unless I define the newarray before the each method?
newarray = []
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
         20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 
         37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 
         54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
         71, 72,  73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
         88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]

array.each do |number|

  if number%5 == 0 && number%3 == 0
    newarray[number] = "FizzBuzz"
     
  elsif
    number%5 == 0
    newarray[number] = "Buzz"
  elsif
    number%3 == 0
    newarray[number] = "Fizz"
  else
    newarray[number] = number
  end
end
newarray



