require 'order'

describe Order do 

	let(:chips) { double :dish}
	let(:bens_order) { Order.new }

	it "has no dishes on initialization" do 
		expect(bens_order.dishes).to be_empty
	end

	it "is able to add dishes" do 
		bens_order.add_dish!(chips)
		expect(bens_order.dishes.first).to be chips
	end
	it "is able to remove dishes" do 
		bens_order.add_dish!(chips)
		bens_order.remove_dish!(chips)
		expect(bens_order.dishes).to be_empty
	end

end