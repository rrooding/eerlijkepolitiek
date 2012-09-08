module AuthenticationHelpers

  def authenticate_network network
    visit '/login'
    first(".#{network}").click
  end

end

World(AuthenticationHelpers)
