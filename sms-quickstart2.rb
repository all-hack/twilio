require 'twilio-ruby'
require 'sinatra'

#	extra media content reply
#	Phone number must be MMS enabled remember 
#	https://www.twilio.com/docs/quickstart/ruby/sms/hello-monkey
#	section 2 
#

get '/sms' do 
	#twilio object 
	twiml = Twilio::TwiML::Response.new do |r|
		# prepares a message 
		r.Message do |message|
			message.Body "Body"
			# adds media component 
			message.MediaUrl "https://demo.twilio.com/owl.png"
			message.MediaUrl "https://demo.twilio.com/logo.png"
		end
	end 
	# actually sends the text
	twiml.text
end


