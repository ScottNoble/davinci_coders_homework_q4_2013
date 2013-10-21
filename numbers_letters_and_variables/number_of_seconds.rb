#!/usr/bin/env ruby

Class Seconds
   seconds_in_minute = 60
   minutes_in_hour = 60
   hours_in_day = 24
   days_in_week = 7
   days_in_year = 365.25
   seconds_in_hour = seconds_in_minute * minutes_in_hour
   seconds_in_day = seconds_in_hour * hours_in_day
   seconds_in_week = seconds_in_day * days_in_week
   seconds_in_year = seconds_in_day * days_in_year




puts "There are #{seconds_in_minute} seconds in a minute"
puts "There are #{minutes_in_hour} minutes in a hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"
puts "That means there are:"
puts "   #{seconds_in_hour} in an hour"
puts "   #{seconds_in_day} in a day"
puts "   #{seconds_in_week} in a week"
puts "That means when you turn 20, you've been alive for #{20*seconds_in_year} seconds,\n and if you live to 100 years old you will have lived for #{100*seconds_in_year} seconds \n Make them count!"

