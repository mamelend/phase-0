# Calculate Letter Grade
#return a,b,c,d,f
#90-100 = a
#80-89 = b
#70-79 = c
#60-69 = d
#0-59 = f

def get_grade(avg)
  if avg >= 90 then
    return "A"
  elsif avg > 79 then
    return "B"
  elsif avg > 69 then
    return "C"
  elsif avg > 59 then
    return "D"
  else 
    return "F"
  end
end