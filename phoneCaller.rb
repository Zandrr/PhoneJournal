# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems' # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC66b3c231a1546c9c944db89efe2b29d3'
authFileLines=File.readlines('./authToken.txt').each do |line| end
auth_token = authFileLines[0]
@client = Twilio::REST::Client.new account_sid, auth_token

call = @client.account.calls
              .create(url: 'http://demo.twilio.com/docs/voice.xml',
                      to: '+16172726662',
                      from: '+15017122661')
puts call.to