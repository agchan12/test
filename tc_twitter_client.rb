require_relative "twitter_client"
require "test/unit"
 
class TestTwitterClient < Test::Unit::TestCase
  def test_count_tweets
    # Assume twitter user "ABC" post tweets
    # in every hour in last 24 hours
    hash = TwitterClient.instance.count_tweets("ABC")
    assert_equal(24, hash.size())

    # Assume twitter user "aTwitterAccount"
    # post no tweets in last 24 hours
    hash = TwitterClient.instance.count_tweets("aTwitterAccount)
    assert_equal(0, hash.size())
  end
end