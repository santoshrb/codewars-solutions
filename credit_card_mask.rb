# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret 
# question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. 
# Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples
# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

# Solution:

def maskify(cc)
  str_length = cc.length
  if str_length > 4
     first_st = str_length - 4
     last_st = cc.chars.last(4).join
     new_string = '#' * first_st + last_st
  else
     return cc
  end
end

# Sample Tests:
# 1 Test.assert_equals(maskify('4556364607935616'), '############5616')
# 2 Test.assert_equals(maskify('1'), '1')
# 3 Test.assert_equals(maskify('11111'), '#1111')
