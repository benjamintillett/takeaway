class MessageBuilder

	ONE_HOUR_FROM_NOW = (Time.now + 3600).strftime("%H:%M")
	ORDER_FORMAT =  <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
						Thank you! Your order was placed and 
						will be delivered before #{ONE_HOUR_FROM_NOW}
					EOS

 
  

	def build_message(message)

	end


end