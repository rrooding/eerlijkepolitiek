
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '160099544113923', '9a8fa965454819798afee8d40cf998a2'
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end

if Rails.env.test?
  OmniAuth.config.test_mode = true
  #OmniAuth.config.mock_auth[:facebook]
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
    :provider => 'facebook',
    :uid => '123545'
    # etc.
  )
end

