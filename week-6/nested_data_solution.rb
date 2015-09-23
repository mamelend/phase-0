# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]


# attempts:
# ============================================================
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}


# attempts:
# ============================================================
p hash.fetch(:outer).fetch(:inner).fetch("almost").fetch(3)


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}


# attempts:
# ============================================================
p nested_data.fetch(:array)[1].fetch(:hash)


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
new_array = []
number_array.each do |x| 
	if x.kind_of?(Array)
		new_array << x.map! {|y| y += 5}
	else
		x += 5
		new_array << x
	end
end
p new_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# new_names = []
# startup_names.each do |x|
# 	if x.kind_of?(Array)
# 		x.each do |y|
# 			if y.kind_of?(String)
# 				new_names << y + "ly"
# 			else
# 				new_names << y.map! {|z| z + "ly"}
# 			end
# 		end
# 	else	
# 		new_names << x + "ly"
# 	end
# end
# p new_names
def namely(array)
	array.map! do |x|
		if x.kind_of?(String)
			x + "ly"
		elsif x.kind_of?(Array)
			namely(x)
		end
	end 
end

p namely(startup_names)

# Reflection!

# What are some general rules you can apply to nested arrays?
# => Make sure you are iterating through each element of each array.
# What are some ways you can iterate over nested arrays?
# => enumerables and recursion!
# Did you find any good new methods to implement or did you re-use one you were 
# already familiar with? 
# => I used each and map again, fetch and kind_of? were two that I haven't used much.
# What was it and why did you decide that was a good option?
# => They seemed to fit bit with each assignment. I'm not sure if we were supposed to 
# => implement recursion on the last optional assignment, but it seems to work exactly 
# => as intended.


