require 'dish'

describe Dish do 
	
	let(:chips) { Dish.new(1.1,"Chips") }

	context "On intitialization" do 

		it "has a price" do
			expect(chips.price).to eq 1.1 
		end

		it "has a name" do 
			expect(chips.name).to eq "Chips"
		end 
	end
end