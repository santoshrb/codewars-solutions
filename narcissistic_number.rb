# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).
# For example, take 153 (3 digits):
#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# and 1634 (4 digits):
#     1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
#
# The Challenge:
# Your code must return true or false depending upon whether the given number is a Narcissistic number in base 10.
# Error checking for text strings or other invalid inputs is not required, only valid integers will be passed into the function.

# Solution:

require 'spec_helper'
require 'byebug'

def narcissistic(value)
  string_array = value.to_s.chars
  digits = string_array.length
  results = string_array.map { |num| num.to_i ** digits }
  results.reduce(:+) == value
end

# Sample Tests:

describe("Narcissistic Function") do
  it "should find small numbers are all narcissistic" do
    expect(narcissistic(5)).to eq(true)
  end

  it "should find these numbers are narcissistic" do
    expect(narcissistic(153)).to eq(true)
  end

  it "should find these numbers are NOT narcissistic" do
    expect(narcissistic(1633)).to eq(false)
  end
end

# describe("Narcissistic Function") do
#   it 'basis tests' do
#     expect(narcissistic(5)).to eq(true)
#     expect(narcissistic(153)).to eq(true)
#     expect(narcissistic(1633)).to eq(false)
#   end
# end
