# I worked on this challenge [by myself, with: ].
#Nathan Park

# Your Solution Below

def valid_triangle?(a, b, c)

  if a <= 0 || b <= 0 || c <=0
    puts "an arguement is equal to 0"
    return false
  end
  if c < a + b && a < b + c && b < a + c
      if a == b && b == c
        puts "equilateral"
        return true
      end
      if a == b && c < a + b || b == c && a < b + c || a == c && b < a + c
        puts "isoceles"
        return true
      end
      if a*a + b*b = c*c || b*b + c*c = a*a || c*c + a*a = b*b
        puts "pythagorean"
        return true
      end
        return true
      else
        return false
  end
  
end