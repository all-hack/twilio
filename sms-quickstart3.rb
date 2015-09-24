
require 'twilio-ruby'
require 'sinatra' 




get '/sms' do
	sender = params[:From]
	
	friends = {
		"+19175733550" => "Oliver Belanger",
		"+19495773728" => "well"
	}
	
	name = friends[sender] || "Mobile Monkey"
	twiml = Twilio::TwiML::Response.new do |r|
		r.Message "Hello, #{name}. Thanks for the message."
	end 
	twiml.text
end


