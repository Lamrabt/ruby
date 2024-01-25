require_relative '../lib/caesar_cipher.rb'

describe "the sum_of_3_or_5_multiples method" do
    it "should sum an integer that is a multiple of 3 or 5" do
        expect(encrypt("What a string!z", 5)).to eq("Bmfy f xywnsl!")
    end
  end