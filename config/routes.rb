Eerlijkepolitiek::Application.routes.draw do
  get "authentications/index"

  match '/auth/:provider/callback', to: 'sessions#create'

  #%w{get post}.each do |method|
    #send(method, '/auth/:provider/callback') do
      #env['omniauth.auth']
    #end
  #end

  get 'login' => 'authentications#index'
end
