#!/usr/bin/env ruby

#"{When run, this program should print out the drinking song
#( hqp://www.99-boqles-of-beer.net/ lyrics.html)
#Please place a blank line between each verse.}"

class Bottlesofbeer
  def self.drink(bottle)
    if bottle == 0
      puts "#{bottle} bottles of beer on the wall! #{bottle} bottles of beer. Who's up for a beer run?\n"
    elsif bottle == 1
      puts "#{bottle} bottle of beer on the wall! #{bottle} bottle of beer! Take it down pass it around #{bottle-1} bottles of beer on the wall!\n"
      drink(bottle-1)
    elsif bottle == 2
      puts "#{bottle} bottles of beer on the wall! #{bottle} bottles of beer! Take one down pass it around #{bottle-1} bottle of beer on the wall!\n"
      drink(bottle-1)
    elsif bottle > 0
      puts "#{bottle} bottles of beer on the wall! #{bottle} bottles of beer! Take one down pass it around #{bottle-1} bottles of beer on the wall!\n"
      drink(bottle-1)
    else
      puts "Argument error, no negative bottles of beer possible"
    end
  end
end

Bottlesofbeer.drink(99)









