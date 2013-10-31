require 'spec_helper'
require 'warmup_10'

describe Warmup10 do
  describe "#calculate_string(string)" do
    it "returns 6 for 'What is 3 + 3?'" do

      expect(subject.calculate_string('What is 3 + 3?')).to eq(6)
    end
  end
end
# Write a method "calculate_string" that takes a string
# and returns an integer result.  Please use TDD.
#
# Examples:
#   What is 3 + 3?       6
#   What is 3 + -3?      0
#   What is -3 + 3?      0
#   What is -3 + -3?    -6
#   What is 234 + 62?  296
#   What is 450 + 78?  528
#
# Bonus
#   What is 3 - 3?       0
#   What is 3 * 3?       9
#   What is 9 / 3?       3
