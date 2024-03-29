require_relative "twitter_client"
require "test/unit"
 
class TestTwitterClient < Test::Unit::TestCase
  def test_count_tweets
    # Assume twitter user "ABC" post tweets
    # in every hour in last 24 hours
    hash = TwitterClient.instance.count_tweets("ABC")
    assert_equal(24, hash.size())

    # Assume twitter user "do_saru (a twitter account that I made up for the purposes of testing)"
    # post no tweets in last 24 hours
    hash = TwitterClient.instance.count_tweets("do_saru")
    assert_equal(24, hash.size())
    # test all the tweets count are 0
    assert_equal(0, hash.values.inject(0){|sum,x| sum + x })
  end
end
