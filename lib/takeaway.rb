require 'twilio-ruby'

class Takeaway
	
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
end