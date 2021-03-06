raise "Missing env var" if %w[CONSUMER_KEY CONSUMER_SECRET ACCESS_TOKEN ACCESS_TOKEN_SECRET].find { |key| ENV[key].nil? }

[TweetStream, Twitter].each { |klass| klass.configure do |config|
  config.consumer_key = ENV["CONSUMER_KEY"]
  config.consumer_secret = ENV["CONSUMER_SECRET"]
  config.oauth_token = ENV["ACCESS_TOKEN"]
  config.oauth_token_secret = ENV["ACCESS_TOKEN_SECRET"]
end}

Airbrake.configure do |config|
  config.api_key = 'db6b0882cfa20bbfe2db9abe2768d2c5'
end