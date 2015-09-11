#Roman Numerals Old School

def translate(num)
	roman = ''
	if num.length == 3
		roman = 'M' * num[0]
	end
	if num.length >= 2
		if num[1] >= 5
			roman = roman + 'D' + (I * (num[1].to_i - 5))
		elsif num[1] < 5 && num[1] >= 1
			roman = roman + 'C' * num[1].to_i)
		end
	if num.length >= 1
		if num[2] >= 5
			roman = roman + 'L' + (I * (num[2].to_i - 5))
		elsif num[2] < 5 && num[1] >= 1
			roman = roman + 'X' * num[2].to_i)
		end
		
		if num < 5
			roman = 'I' * num
			puts roman
	end
end

puts "This Program will convert an arabic numberal into a roman numeral."
print "Please enter a number:"
num = gets.chomp
translate(num)


