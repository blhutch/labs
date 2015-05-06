def destutter2(seq)
	result = []
	last = nil
	seq.each do |item|
		if item != last
			result.push (item)
		end
		last = item
	end 

	result

end

x - [1, 2, 3, 3, 4, 4, 3, 2, 2, 1]


