# DO NOT UPLOAD TO GIT UNTIL YOU CAN HIDE CREDENTIALS

require 'rubygems' 
require 'twilio-ruby' 

# It works. The message sends.
=begin
account_sid = 'account_sid' 
auth_token = 'auth_token' 
@client = Twilio::REST::Client.new(account_sid, auth_token) 
 
message = @client.messages.create(  
                             from: '+1',       
                             to: '+1',
                             body: "When do you start work this week?\n" +
                                   "Write time for each day as a new line."
                           ) 
 
puts message.sid
=end
