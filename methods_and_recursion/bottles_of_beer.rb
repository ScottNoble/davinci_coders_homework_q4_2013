#!/usr/bin/env ruby

#"{When run, this program should print out the drinking song
#( hqp://www.99-bottles-of-beer.net/ lyrics.html)
#Please place a blank line between each verse.}"
# bottles is one of:
#  bottles > 1
#  7 bottles of beer on the wall, 7 bottles of beer.
#  Take one down and pass it around, 6 bottles of beer on the wall.
#  bottles == 1
#  1 bottle of beer on the wall, 1 bottle of beer.
#  one down and pass it around, no more bottles of beer on the wall.
#  bottles == 0
#  "No more bottles of beer on the wall, no more bottles of beer.
#  Go to the store and buy some more, 99 bottles of beer on the wall.


class Bottlesofbeer
  def self.get_lyric(bottle)
    if bottle == 0
      puts "#{bottle} bottles of beer on the wall! #{bottle} bottles of beer. Who's up for a beer run?\n"
    elsif bottle == 1
      puts "#{bottle} bottle of beer on the wall! #{bottle} bottle of beer! Take it down pass it around #{bottle-1} bottles of beer on the wall!\n"
      get_lyric(bottle-1)
    elsif bottle == 2
      puts "#{bottle} bottles of beer on the wall! #{bottle} bottles of beer! Take one down pass it around #{bottle-1} bottle of beer on the wall!\n"
      get_lyric(bottle-1)
    elsif bottle > 0
      puts "#{bottle} bottles of beer on the wall! #{bottle} bottles of beer! Take one down pass it around #{bottle-1} bottles of beer on the wall!\n"
      get_lyric(bottle-1)
    else
      puts "Argument error, no negative bottles of beer possible"
    end
  end
end

Bottlesofbeer.drink(99)









