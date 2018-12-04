file = File.open("day2.txt", 'r')
dups = Hash.new
while !file.eof?
	map = Hash.new
	counts = Hash.new
	line = file.readline
	line.each_char { |c|
		if !map.has_key?(c)
			map[c] = 1
		else
			map[c] = map[c] + 1
		end
	}
	map.each_value { |value| 
		if !counts.has_key?(value)
			counts[value] = 1
		end
	}
	puts counts
	counts.each_key { |key| 
		if !dups.has_key?(key)
			dups[key] = 1
		else
			dups[key] += 1
		end
	}
end
dups[1] = 1
solution = 1
dups.each_value{ |value| 
	puts value
	solution = solution * value
}


puts solution