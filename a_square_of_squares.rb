# A square of squares
# You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!
#
# However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.
#
# Task
# Given an integral number, determine if it's a square number

# Examples
# isSquare(-1) returns  false
# isSquare(0) returns   true
# isSquare(3) returns   false
# isSquare(4) returns   true
# isSquare(25) returns  true
# isSquare(26) returns  false

def is_square(x)
  return false if x < 0
  Math.sqrt(x) % 1 == 0
end

# Sample Tests:
describe('a_square_of_squares') do
  it 'is_square' do
    expect(is_square(-1)).to eq(false)
    expect(is_square(0)).to eq(true)
    expect(is_square(3)).to eq(false)
    expect(is_square(4)).to eq(true)
    expect(is_square(25)).to eq(true)
    expect(is_square(26)).to eq(false)
  end
end
