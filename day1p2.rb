sum = 0
changes = Array.new
file = File.open("day1.txt", 'r')
while !file.eof?
	line = file.readline
	changes << line.to_i
end

map = Hash.new
twice = false
while !twice
	changes.each { |item|
		sum = sum + item
		if !map.has_key?(sum)
			map[sum] = 1
		else
			puts sum
			twice = true
			break
		end
	}
end
