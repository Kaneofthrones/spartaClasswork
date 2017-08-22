class Square
	attr_accessor :side_length

	def initialize(side_length)
		self.side_length = side_length
	end

	def calculate_area 
  		self.side_length ** 2
	end

	def calculate_perimeter 
  		self.side_length * 4
	end

	def scaled_length(factor)
		self.side_length += factor
	end

	# def scale_square
	# 	# puts "please enter the scale factor you would like: "
	# 	# scale = gets.chomp
	# 	self.side_length * scale.to_i
	# end	

	# def scaled_area
	# 	# s_square = scale_square
	# 	scale_square ** 2
	# end

	# def scaled_perimeter
	# 	# s_square = scale_square
	# 	scale_square * 4
	# end

	def describe_square
		puts "Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
		puts "Scaled Area: #{scaled_area} Perimeter: #{scaled_perimeter}"
	end

end