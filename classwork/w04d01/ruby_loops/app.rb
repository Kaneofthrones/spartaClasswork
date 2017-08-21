# i = 0

# while i < 10 do 
# 	puts "While: #{i}"
# 	i += 1 
# end

# j = 0

# begin
# 	puts "Do while: #{j}"
# 	j += 1
# end while j < 10

# k = 0

# until k > 10 do
# 	puts "Until: #{k}"
# 	k += 1
# end

# for l in 0...5 
# 	puts "For loops are lame #{l}"
# end

# 6.times do 
# 	puts "6 times"
# end 

# names = ["kane", "joe", "melissa", "Naren", "melson", "Sabirin", "divtag", "William"]

# names.each do |name|
# 	puts name
# end

# some_words = ["suhdude", "chevorlet", "python"]
# new_words = some_words.map do |word| 
# 	word.reverse
# end
# puts new_words


some_numbers = [12,2,3,32,34,4,54,5,342,32,4,5,66,9]

sum = some_numbers.reduce do |total, number|
	total * number 
end

puts sum



 

