# An Arithmetic Progression is defined as one in which there is a constant difference between
# the consecutive terms of a given series of numbers.
# You are provided with consecutive elements of an Arithmetic Progression.
# There is however one hitch: exactly one term from the original series is missing from the set of numbers which have been given to you.
# The rest of the given series is the same as the original AP. Find the missing term.
#
# You have to write a function that receives a list,
# list size will always be at least 3 numbers. The missing term will never be the first or last one.
#
# Example
# findMissing([1, 3, 5, 9, 11]) == 7
# PS: This is a sample question of the facebook engineer challenge on interviewstreet.
# I found it quite fun to solve on paper using math, derive the algo that way. Have fun!

# Solution:

require 'spec_helper'
require 'byebug'

def find_missing(sequence)
  (sequence[0] + sequence[-1]) * (sequence.size + 1) / 2 - sequence.sum
end


# Sample Tests:

describe("sequence") do
  it 'basis tests' do
    expect(find_missing([1, 2, 3, 4, 6, 7, 8, 9])).to eq(5)
    expect(find_missing([1, 3, 4, 5, 6, 7, 8, 9])).to eq(2)
    expect(find_missing([1, 2, 3, 4, 5, 6, 8, 9])).to eq(7)
  end
end
