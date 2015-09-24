require 'twilio-ruby'
require 'sinatra'

#	Normal reply
#	https://www.twilio.com/docs/quickstart/ruby/sms/hello-monkey
#	first section 
#

# route 
get '/sms' do
	#twilio object
	twiml = Twilio::TwiML::Response.new do |r|
		#sends plain sms 
		r.Message "Hey Monkey.Thanks for the message!"
	end
	twiml.text
end


