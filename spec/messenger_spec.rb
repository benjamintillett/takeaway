require 'messenger'

describe Messenger do 

	let(:account_sid) { "AC23b6d433f3f3a478297778c177e09a2b"}
	let(:auth_token) { "a27ccaf2c74cf6185ac807b2a08ea77e"}
	let(:messenger) { Messenger.new(account_sid,auth_token) }
	let(:client) { double :twilio_rest_client}
	let(:messages) { double :messages}

	it "has a twillio rest client on initialization" do 
		expect(messenger.client).to be_an_instance_of(Twilio::REST::Client)
	end

	it "can send a message" do 
		allow(messenger).to receive(:client).and_return(client)
		allow(client).to receive(:messages).and_return(messages)
		from, to, body  = "a number", "a number","Hello this is a message" 
		expect(messages).to receive(:create).with({from: from, to: to, body: body})
		messenger.send_text(from,to,body)
	end
end