require 'spec_helper'
require 'fibonacci'

describe Fibonacci do

  it 'should be a Fibonacci' do
    subject.should be_a(Fibonacci)
  end

  describe "#result(number)" do
    it "should handle 0" do
      expect(subject.result(0)).to eq(0)
    end
    it "should handle 1" do
      expect(subject.result(1)).to eq(1)
    end
    it "should handle 2" do
      expect(subject.result(2)).to eq(1)
    end
    it "should handle 3" do
      expect(subject.result(3)).to eq(2)
    end
    it "should handle 4" do
      expect(subject.result(4)).to eq(3)
    end
    it "should handle 3" do
      expect(subject.result(5)).to eq(5)
    end
    it "should handle 3" do
      expect(subject.result(6)).to eq(8)
    end
    it "should handle 3" do
      expect(subject.result(7)).to eq(13)
    end
    it "should raise error if < 0" do
        expect{subject.result(-1)}.to raise_error("Fibonacci of a negative number is undefined")
    end
  end

end
