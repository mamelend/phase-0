# Factorial

# I worked on this challenge [by myself, with: ].
#Kai Huang

# Your Solution Below
def factorial(num)
  fact = 1
  if num == 0
    return fact
  else
    while num > 0
    fact = fact * num
    num -= 1
    end
  return fact
  end
end

puts factorial(10)