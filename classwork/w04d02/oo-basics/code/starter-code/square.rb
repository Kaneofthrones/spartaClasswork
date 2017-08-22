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

	def scale_square
		self.side_length * 10
	end

	def scaled_area
		scale_square ** 2
	end

	def scaled_perimeter
		scale_square * 4
	end

	def describe_square
		puts "Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
		puts "Scaled Area: #{scaled_area} Perimeter: #{scaled_perimeter}"
	end

end