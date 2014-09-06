require 'twilio-ruby'

class Messenger
	
	attr_reader :client

	def initialize(account_sid,auth_token)
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

	def send_text(from,to,body)
		client.messages.create(
  			from: from,
  			to: to,
  			body: body
		)
	end

end