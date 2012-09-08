Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY']||'samplekey', ENV['TWITTER_SECRET']||'samplekey'
  provider :facebook, ENV['FACEBOOK_KEY']||'samplekey', ENV['FACEBOOK_SECRET']||'samplekey'
end

if Rails.env.test?
  OmniAuth.config.test_mode = true
  #OmniAuth.config.mock_auth[:facebook]
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
    :provider => 'facebook',
    :uid => '123545',
    :extra => {
      :raw_info => {
        :first_name => 'Ralph'
      }
    }
  )

  OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new(
    :provider => 'twitter',
    :uid => '54321',
    :extra => {
      :raw_info => {
        :first_name => 'Ralph'
      }
    }
  )
end
