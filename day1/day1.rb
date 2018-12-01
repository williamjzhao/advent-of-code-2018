sum = 0
file = File.open("day1.txt", 'r')
while !file.eof?
	line = file.readline
	puts line
	sum += line.to_i
end
puts sum
