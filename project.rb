require 'sinatra'

get "/" do
	@my_tweets = File.open("my_tweets.txt", "r:UTF-8").readlines
	erb :main
end

get "/add_tweet_form" do
	erb :add_tweet_form
end

post "/add_tweet" do
	f = File.open("my_tweets.txt", "a:UTF-8")
	f.puts params[:tweet_txt]
	f.close
	
	redirect "/" 
end