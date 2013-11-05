#!/usr/bin/env ruby

array = (1..10).to_a
array.each { |a| print a, "..."  }
print "T-#{array.reverse.join(", ")}...  BLASTOFF!"
print "The last element is #{array.last}"
print "The first element is #{array.first}"
print "The third element is #{array.slice(2)}"
print "The element with an index of 3 is #{array.slice(3)}"
print "The second from last element is #{array.slice(-2)}"
print "The first four elements are '#{array.slice(0, 4).join(", ")}'"

array2 = (1..10).to_a
array.slice!(4, 3)
print "If we delete #{array2.slice(4,2).join(", ")} and #{array2.slice(6)} from the array, we're left with #{array.to_s.gsub(/\s/, "")}"
print "If we add 5 at the beginning of the array, we're left with #{array.unshift(5).to_s.gsub(/\s/, "")}"
print "If we add 6 at the end of the array, we're left with #{array.push(6).to_s.gsub(/\s/, "")}"
print "Only the elements #{array.delete_if{|a| a <= 8}} are > 8."
array.slice!(0,2)
print "If we remove all the elements, then the length of the array is #{array.length}"
