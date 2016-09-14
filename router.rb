require "sinatra"
require "sinatra/json"
require_relative "twitter_client"


# Question 1
get "/" do
  "Try /hello/:name"
end

# Question 2
get "/hello/:name" do
  "Hello #{params['name']}"
end

# Question 3
# return the count of tweets in last 24 hours
# for certain twitter user
get "/histogram/:name" do
  json TwitterClient.instance.count_tweets(params["name"])
end
