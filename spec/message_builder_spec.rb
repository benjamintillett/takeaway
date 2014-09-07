require 'message_builder'

describe MessageBuilder do 

	let(:fish) { double :dish, name: "fish", price: 4 }
	let(:chips) { double :dish, name: "chips", price: 2 }
	let(:bens_order) { double :order, dishes: [chips,fish]}
	let(:message_builder) { MessageBuilder.new }

	# it "can build a order list" do 
	# 	expect(message_builder.build_order_list(bens_order)).
	# 	to eq "1 x chips, 1 x fish. Total £6"
	# end


	# it "can build a message" do 
	# 	expect(message_builder.build_message(bens_order)).
	# 	to eq "Thank you! Your order was placed and will be delivered before 09:16, 1 x chips, 1 x fish. Total £6"

	# end

end