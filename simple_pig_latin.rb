# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
#
# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

# Solution:

# Simple Pig Latin

require 'spec_helper'
require 'byebug'

def pig_it text
  array_of_string = text.split(' ')
  a = []
  special = "?<>',?[]}{=-)(*&^%$#`~{}!"
  array_of_string.each do |str|
    if special.include?(str)
      a << str
    else
      new_str = str + str[0] + 'ay'
      new_str[0] = ''
      a << new_str
    end
  end
  a.join(' ')
end

# Sample Tests:

describe("simple_pig_latin") do
  it 'basis tests' do
    expect(pig_it('Pig latin is cool')).to eq('igPay atinlay siay oolcay')
    expect(pig_it('This is my string')).to eq('hisTay siay ymay tringsay')
  end
end
