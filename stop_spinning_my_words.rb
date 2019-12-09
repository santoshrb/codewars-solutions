# Write a function that takes in a string of one or more words, and returns the same string,
# but with all five or more letter words reversed (Just like the name of this Kata).
# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.
#
# Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
#           spinWords( "This is a test") => returns "This is a test"
#           spinWords( "This is another test" )=> returns "This is rehtona test"


# Solution:


require 'spec_helper'
require 'byebug'

def spinWords(string)
  str = string.split(' ')
  return_str = []
  str.each do |s|
    if s.length > 4
      return_str << s.reverse
    else
      return_str << s
    end
  end
  return_str.join(' ')
end


# Sample Tests:

describe("simple_pig_latin") do
  it 'basis tests' do
    expect(spinWords('Hey fellow warriors')).to eq('Hey wollef sroirraw')
  end
end
