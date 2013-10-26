#!/usr/bin/env ruby

class Warmup08
  def initialize
    @card = ["spade", "heart", "diamond", "club"].flat_map do |face|
      [2,3,4,5,6,7,8,9,10, "J","Q","K","A"].map do |value|
        "#{face}#{value}"
      end
    end
  end
  def deal
    @card.delete(@card.sample)
  end
end

game = Warmup08.new

