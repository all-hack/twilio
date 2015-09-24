require 'sinatra'
require 'twilio-ruby'

account_sid = "AC4bc19f4962177525c706193c1477ff96"
auth_token = "1e6377403ec364ae4e9344d3d33505da"
@client = Twilio::REST::Client.new account_sid, auth_token

from = "+19179607931" # my Twilio number

friends = {

	"+19175733550" => "Oliver",
	"+16462806711" => "Eli",
	"+19177160706" => "Andrew"
}

#message = @client.account.messages.create(
#	:body => "yoooo what up", 
#	:to => "+19175733550",
#	:from => from, 
#	:media_url => "http://www.example.com/hearts.png")
#puts message.to



get '/' do 
	"Hello World! Currently running version " + Twilio::VERSION + " of the twilio-ruby library."
end


get '/sms-quickstart' do 

end





