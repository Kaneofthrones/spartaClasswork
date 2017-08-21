def say_hello 

	puts "Hello wurld"

end

say_hello

def add_numbers num, num2 
	puts num + num2 
end 

add_numbers 1, 2

def create_user name, course="WebDev2"
	puts "#{name} is in #{course}"

end

create_user "Richard"
create_user "bob", "SDET10"

def say_more_words * words 
	puts words
end

say_more_words "word", "word2"

def say what, * people 
	people.each do |person|
		puts "hey #{person}, #{what}"
	end
end

say "Hello", "stevo", "bob"

def add_numbers2 num1, num2
	num1 + num2
	num1 * num2 
end

result = add_numbers2 4, 2
puts result

