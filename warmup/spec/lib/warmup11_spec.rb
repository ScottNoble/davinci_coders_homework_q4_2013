require 'spec_helper'
require 'warmup_11'


#If we list all the natural numbers below 10 that are
#multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of
#these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.

Describe Warmup11 do
  Describe return_multiple_sum(OneThousand) do
    it "should return the sum of all the multiples of 3 or 5 below 1000"
    expect(subject.return_multiple_sum(Onethousand)).to be.a(Integer)
  end
end
