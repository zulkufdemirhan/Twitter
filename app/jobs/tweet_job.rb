class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?
    # Set timezone for your location. add t.timestamps in migrations files.
    return if tweet.publish_at > Time.current
    

    tweet.publish_to_twitter!
  end
end
