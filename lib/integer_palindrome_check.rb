# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.

# integer division truncates decimals:
# num /= 10 removes a digit
# num *= 10 adds a digit

# modulus returns remainder:
# num % 10 accesses last digit

def is_palindrome(number)
  return false if number == nil || number < 0

  num = number
  reverse = 0

  while num > 0
    last = num % 10
    reverse = (reverse * 10) + last
    num /= 10
  end

  reverse == number ? true : false

end
