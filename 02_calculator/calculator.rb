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
