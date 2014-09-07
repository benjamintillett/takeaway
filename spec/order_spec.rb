require 'order'

describe Order do 

	let(:chips) { double :dish, price: 2 }
	let(:fish) { double :dish, price: 4 }
	let(:bens_order) { Order.new }

	it "has no dishes on initialization" do 
		expect(bens_order.dishes).to be_empty
	end

	it "is able to add dishes" do 
		bens_order.add_dish!(chips)
		expect(bens_order.dishes[chips]).to be 1
	end
	it "is able to remove dishes" do 
		bens_order.add_dish!(chips)
		bens_order.remove_dish!(chips)
		expect(bens_order.dishes[chips]).to eq 0 
	end

	it "is able to calculate the toal cost of order" do 
		bens_order.add_dish!(chips)
		bens_order.add_dish!(fish)
		expect(bens_order.total_cost).to eq 6 
	end

end