class SessionsController < ApplicationController
  def create
    @authorization = Authorization.find_or_create_by_auth_hash(auth_hash)
    self.current_user = @authorization.user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
