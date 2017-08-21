def welcome

puts "Hello!  Please type your name: "
name = gets.chomp 
  puts "It is nice to meet you #{name}.  I am a simple calculator application.  \n
  I can add, subtract, multiply, and divide.\n"
  return name
end

welcome 

#method to choose between difference types of calculator
# def calc_type 
# 	puts "Type 'b' for basic calculator, 'a' for advanced calculator (power & squareroot) and 'bmi' for body mass index calculator" 
# 	input = gets.chomp

# end

# calc_type()



#advanced calculator
# def adv_type
# 	puts "Type 1 to square and 2 to squareroot"
# 	choice = gets.to_i

# 	if choice == 1
# 		"square"
# 	elsif choice == 2
# 		"squareroot"
# 	end
# end

# This method ask the user what type of calculation they would like to perform
# It returns the operation or an error for erroneous entry
def basic_type
  puts "Type 1 to add, 2 to subtract, 3 to multiply, 4 to divide, 5 to square two numbers and 6 to find the squareroot of one number: "
  operator = gets.to_i

  if operator == 1 
    "add"
  elsif operator == 2
    "subtract"
  elsif operator == 3
    "multiply"
  elsif operator == 4
    "divide"
  elsif operator == 5
  	"square"
  elsif operator == 6
  	"sqrt"
  else
    "error"
  end
end

#method to perform calculations
def calculate_answer(operator, a, b)
  if operator == "add"
    a + b
  elsif operator == "subtract"
   a - b
  elsif operator == "multiply"
    a * b
  elsif operator == "divide"
    a / b
  elsif operator == "square"
  	a ** b
  end
end

def calculate_sqrt(operator, a)
	if operator == "sqrt"
  	Math.sqrt(a)
  end
end

#use this as a counter to keep the calculator running
run_calculator = 1

while run_calculator == 1

  current_calculation = basic_type()

  if current_calculation == "error"

    puts "I do not understand this type of calculation... Can we try again?"  

  elsif current_calculation == "add" || current_calculation == "subtract" || current_calculation == "multiply" || current_calculation == "divide" || current_calculation == "square"

    puts "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i 

    answer = calculate_answer(current_calculation, first_number, second_number)
    puts "The answer is #{answer}"
    puts "Type 1 to run another calcution or 2 to end: "
    run_calculator = gets.to_i

  else 
  puts "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i

    answer = calculate_sqrt(current_calculation, first_number)
		puts "The answer is #{answer}"
    puts "Type 1 to run another calcution or 2 to end: "
    run_calculator = gets.to_i

  end
end