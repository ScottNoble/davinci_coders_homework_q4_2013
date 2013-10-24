#!/usr/bin/env ruby

class Warmup07
  def initialize
    @plays = ('A'..'L').flat_map do |letter|
      (1..10).map do |number|
        "#{letter}#{number}"
      end
    end
  end

  def play
    @plays.delete(@plays.sample)
  end
end

game = Warmup07.new

