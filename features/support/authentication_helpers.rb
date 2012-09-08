module AuthenticationHelpers

  def authenticate_network network
    visit '/'
    first('.js-login').click
    first(".#{network}").click
  end

end

World(AuthenticationHelpers)
