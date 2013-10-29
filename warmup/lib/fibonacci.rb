#!/usr/bin/env
# sequence of numbers such that a given number n is the sum of the
# previous two numbers fib(n-1) + fib(n-2).
# f(0) = 0
# f(1) = 1
# f(2) = 1



class Fibonacci
  def result(number)
    if number < 0
       raise "Fibonacci of a negative number is undefined"
    elsif number == 0
      0
    elsif number == 1
      1
    else
      result(number - 1) + result(number - 2)
    end
  end
end
