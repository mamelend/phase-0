# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ]. SOLO


# Your Solution Below

def array_concat(array_1, array_2)
  if array_1.any? != true && array_2.any? != true
  	return []
  end
  array_1.concat(array_2)
end