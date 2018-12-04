inputs = Array.new
file = File.open("day2.txt", 'r')
while !file.eof?
	line = file.readline
	inputs << line.to_str
end

length = inputs.length
0.upto(length - 1) { |i|
	word1 = inputs[i]
	wordLength = word1.length
	(i + 1).upto(length - 1) { |j|
		repeats = ""
		rNum = 0
		word2 = inputs[j]
		0.upto(wordLength - 1) { |k|
			if word1[k] == word2[k]
				repeats = repeats + word1[k]
			elsif rNum < 1
				rNum = rNum + 1
			else
				break
			end
		}
		if repeats.length == wordLength - 1
			puts repeats
		end
	}
}