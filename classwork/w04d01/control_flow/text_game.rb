puts "Welcome to the game, what's your name?"
name = gets.chomp

puts "Grave news #{name}!  You are stuck inside a space ship full of aliens trying to probe you, you can either 'kill' the aliens or 'submit' to recieve probing"

choice = gets.chomp

if choice == 'kill'
  puts "you fail to kill a single alien and they repeatedly probe you" 
elsif choice == 'submit' 
  puts "the aliens begin to put torture tools on a table next to you. you can now either 'take' a tool or continue to 'submit' " 
end

choice2 = gets.chomp

if choice2 == 'take' 
  puts "You take the sadistic instrument of pain and smile as you slowly kill the aliens one by one, you can now 'leave' the room" 
elsif choice2 == 'submit' 
  puts "The aliens take off their space clothes and begin to stroke you with the sharp torture instruments" 
end

choice3 = gets.chomp 
	
if choice3.eql? 'leave'
	puts "you leave the room and are greated by more aliens, however they are cheering you and give you your very own spaceship, stocked full of provisions... you passed the test, good job"
end
	