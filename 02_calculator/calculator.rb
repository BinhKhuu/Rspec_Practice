def add (num_1, num_2)
	num_1 + num_2 
end

def subtract (num_1, num_2)
	num_1 - num_2
end

def sum numbers
	total = 0
	if numbers.length > 0

		for num in numbers
			total += num
		end
	end
	total
end

def multiply (num_1, num_2)
	num_1 * num_2
end

def multiplies numbers
	total = 0
	if numbers.length > 0
		total = 1
		for num in numbers
			total *= num
		end
	end
	total
end

def power (num,exp)
	total = 1
	if exp == 0
		total = 1
	else 
		for ii in 0...exp
			total = total * num
		end
	end
	total
end

def factorial num
	total = 1
	for ii in 1...num+1
		total *= ii
	end
	total
end