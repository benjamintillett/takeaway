require 'takeaway'

describe Takeaway do 

	context "on initialization" do 

		it "has no dishes " do 
			dominos = Takeaway.new
			expect(dominos.dishes).to be_empty
		end

	end 

end