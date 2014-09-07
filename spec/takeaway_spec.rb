require 'takeaway'

describe Takeaway do 

	let(:dominos) { Takeaway.new }
	let(:chips) { double :dish}

	context "on initialization" do 

		it "has no dishes " do 
			expect(dominos.dishes).to be_empty
		end
	end 

	it "is able to add dishes" do 
		dominos.add_dish!(chips)
		expect(dominos.dishes.first).to be chips
	end
	it "is able to remove dishes" do 
		dominos.add_dish!(chips)
		dominos.remove_dish!(chips)
		expect(dominos.dishes).to be_empty
	end

	

end