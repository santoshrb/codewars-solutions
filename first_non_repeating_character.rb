# First non-repeating character

# Write a function named first_non_repeating_letter that takes a string input,
# and returns the first character that is not repeated anywhere in the string.
#
# For example,
#   if given the input 'stress', the function should return 't',
#   since the letter t only occurs once in the string, and occurs first in the string.
#
# As an added challenge, upper- and lowercase letters are considered the same character,
# but the function should return the correct case for the initial letter. For example,
#   the input 'sTreSS' should return 'T'.
#
# If a string contains all repeating characters, it should return an
# empty string ("") or None -- see sample tests.

# Solution:

require 'spec_helper'
require 'byebug'

def first_non_repeating_letter(s)
  s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || ""
end


# Sample Tests:

describe("First-non-repeating-character") do
  it 'basis tests' do
    Test.assert_equals(first_non_repeating_letter('a'), 'a')
    expect(first_non_repeating_letter('a')).to eq('a')
    expect(first_non_repeating_letter('stress')).to eq('t')
    expect(first_non_repeating_letter('moonmen')).to eq('e')
    expect(first_non_repeating_letter('')).to eq('')
  end
end
