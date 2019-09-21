module Twitter
  module REST
    class Client
      attr_accessor :consumer_key, :consumer_secret, :access_token, :access_token_secret

      def initialize(options = {}, &block)
        options.each{|key, value| send("#{key}=", value)}
        instance_eval(&block) if block_given?
      end
    end
  end
end

client = Twitter::REST::Client.new({consumer_key: "YOUR_CONSUMER_KEY"}) do
  consumer_secret     = "YOUR_CONSUMER_SECRET"
  access_token        = "YOUR_ACCESS_TOKEN"
  access_token_secret = "YOUR_ACCESS_SECRET"
end

p client.consumer_key # => YOUR_CONSUMER_KEY
p client.access_token # => YOUR_ACCESS_TOKEN