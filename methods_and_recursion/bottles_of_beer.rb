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
#  Go to the store and buy some more, 99 bottles of beer on the wall."


class Bottlesofbeer
  def self.get_lyric(bottle_number)
    if bottle_number == 0
      puts "No more bottles of beer on the wall, no more bottles of beer!\nGo to the store and buy some more, 99 bottles of beer on the wall!"
    else
      if bottle_numer == 1
        @bottle = "bottle"
        @bottle2 = "bottles"
      elsif bottle_number == 2
        @bottle = "bottles"
        @bottle2 = "bottle"
      else
        @bottle = "bottles"
        @bottle2 = "bottles"
      end
      puts "#{bottle_numer} #{@bottle} of beer on the wall. #{bottle_numer} #{@bottle} of beer. Take it down pass it around #{bottle_numer-1} bottles of beer on the wall.\n"
      get_lyric(bottle_numer-1)

    #elsif bottle_numer == 2
    #  puts "#{bottle_numer} bottles of beer on the wall. #{bottle_numer} bottles of beer. Take one down pass it around #{bottle_numer-1} bottle of beer on the wall.\n"
    #  get_lyric(bottle_numer-1)
    #elsif bottle_numer > 0
    #  puts "#{bottle_numer} bottles of beer on the wall. #{bottle_numer} bottles of beer. Take one down pass it around #{bottle_numer-1} bottles of beer on the wall.\n"
    #  get_lyric(bottle_numer-1)
    #else
    #  puts "Argument error, no negative bottles of beer possible"
    end
  end
end

Bottlesofbeer.get_lyric(99)







