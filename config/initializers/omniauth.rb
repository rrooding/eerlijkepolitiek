
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '160099544113923', '9a8fa965454819798afee8d40cf998a2'
  provider :twitter, '3d9bEDiuJywha6RrWR8VQ', 'aVrKcfNk6fL90htjsMyF2R49vMxKOrIdJxqpFhM0Zls'
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

