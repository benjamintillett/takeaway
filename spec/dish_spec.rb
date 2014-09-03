require 'dish'

describe Dish do 

	context "On intitialization" do 

		it "has a price" do
			chips = Dish.new(1.1,"Chips")
			expect(chips.price).to eq 1.1 
		end

		it "has a name" do 
			chips = Dish.new(1.1,"Chips")
			expect(chips.name).to eq "Chips"
		end 
	end


end