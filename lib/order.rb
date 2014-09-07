class Order

	attr_reader :dishes 

	def initialize
		@dishes = Hash.new(0)
	end

	def add_dish!(dish)
		dishes[dish] = dishes[dish] ? dishes[dish] + 1 : 1  
		self
	end

	def remove_dish!(dish)
		dishes[dish] -= 1
		self
	end

	def total_cost
		total = 0 
		dishes.each { |dish,quantity| total += dish.price * quantity }
		total
	end

end