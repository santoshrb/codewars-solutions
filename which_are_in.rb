# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical
#     order of the strings of a1 which are substrings of strings of a2.
#
# Example 1:
# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns ["arp", "live", "strong"]
#
# Example 2:
# a1 = ["tarp", "mice", "bull"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns []
#
# Notes:
# Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
# In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
# Beware: r must be without duplicates.
# Don't mutate the inputs

# Solution:

require 'spec_helper'
require 'byebug'

def in_array(array1, array2)
 array1.select { |s| array2.any? { |s2| s2.include? s }}.sort
end


# Sample Tests:

describe("parts_sums") do
  it 'first tests' do
    a1 = ["arp", "live", "strong"]
    a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
    expect(in_array(a1, a2)).to eq(["arp", "live", "strong"])
  end

  it 'second tests' do
    a1 = ["tarp", "mice", "bull"]
    expect(in_array(a1, a2)).to eq([])
  end
end
