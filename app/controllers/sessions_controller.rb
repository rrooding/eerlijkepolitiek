class SessionsController < ApplicationController
  def create
    @authorization = Authorization.find_or_create_by_provider_and_uid(auth_hash['provider'], auth_hash['uid'])
    #@user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
