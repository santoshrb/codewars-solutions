# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace
# the missing second character of the final pair with an underscore ('_').
#
# Examples:
#
# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']

# Solution:

require 'spec_helper'
require 'byebug'

def solution(str)
  str_array = str.scan(/.{1,2}/)
  str_array.map { |s| s.length < 2 && s + '_' || s }
end

# Sample Tests:

describe("solution") do
  it 'basis tests' do
    expect(solution('abc')).to eq(['ab', 'c_'])
    expect(solution('abcdef')).to eq(['ab', 'cd', 'ef'])
  end
end
