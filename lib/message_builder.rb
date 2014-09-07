class MessageBuilder

	ONE_HOUR_FROM_NOW = (Time.now + 3600).strftime("%H:%M")
	FORMAT_HEADER =  "Thank you! Your order was placed and will be delivered before #{ONE_HOUR_FROM_NOW}. "
	
	def build_message(order)
		FORMAT_HEADER + build_order_list(order)
	end

	def build_order_list(order)
		order_list = ""
		puts order.dishes
		order.dishes.each { |dish, quantity| order_list += format_dish(dish,quantity) }
		"#{order_list}Total £#{order.total_cost}"
	end

	def format_dish(dish,quantity)
		"#{quantity.to_s} x #{dish.name}, "
	end

end