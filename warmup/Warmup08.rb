#!/usr/bin/env ruby

class Card
 attr_accessor
  def initialize
    @card = ["Spades", "Hearts", "Diamonds", "Clubs"].flat_map do |face|
      [2,3,4,5,6,7,8,9,10, "J","Q","K","A"].map do |value|
        "#{value} of #{face}"
      end
    end
  end

end

class Deck
  while @card !== nil
    @card.delete(@card.sample)
  end
  def deal
    @card.delete(@card.sample)
  end
end

game = Card.new


puts game.deal
