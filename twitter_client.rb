require "singleton"
require "twitter"
require "date"

class TwitterClient
  include Singleton

  def initialize
    # init Twitter client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "rzYI2wnpYdSdPaAWhKJHxsFIa"
      config.consumer_secret     = "0FpIZCxxztq2r9x1UjfksMeyNBjyqHpbOhMrRMyJwv7HsC1o4F"
      config.access_token        = "774537742453575680-fPEQfAIub3sMlWS58Wk7JVeB5pfPtYG"
      config.access_token_secret = "eFfMS8hPiVL5mTm1YrlU9qs5x5SBjG9nbkQVrDsoTHFV8"
    end

  end

  # fetch tweets for username and return the count in last 24 hours
  #
  # Params
  # username: String
  #
  # Returns
  # Hash
  def count_tweets(username)

    # fetch all the tweets for this user,
    # set tweets count to max 200
    fetched_tweets = @client.user_timeline(username, {count: 200})

    # init a counter to keep the count of tweet happens in last 24 hours
    hour_counter = Array.new(24) { |e| e = 0 }

    # start the timer after fetch all the tweets
    now = Time.now
    fetched_tweets.each do |tweet|
      if now < tweet.created_at + 24 * 60 * 60
        # only consider the 24 hours tweets
        hour_counter[tweet.created_at.hour] += 1
      else
        # if loop to a tweet before 24 hours ago,
        # then terminates the loop
        break
      end
    end

    # convert array into hash
    # using array index as key
    # and convert key to string
    hash = Hash.new
    hour_counter.each_with_index {|val, index| hash[index.to_s] = val}
    return hash
  end
end