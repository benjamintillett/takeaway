class Order

	ONE_HOUR_FROM_NOW = (Time.now + 3600).strftime("%H:%M")
	ORDER_FORMAT = "Thank you! Your order was placed and will be delivered before #{ONE_HOUR_FROM_NOW}"

	attr_reader :dishes 

	def initialize
		@dishes = []
	end

	def add_dish!(dish)
		dishes << dish
		self
	end

	def remove_dish!(dish)
		dishes.delete(dish)
		self
	end

	def total_cost
		dishes.inject(0){ |total,dish| total + dish.price    }
	end

end