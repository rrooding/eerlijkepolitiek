Eerlijkepolitiek::Application.routes.draw do
  get "authentications/index"

  get 'login' => 'authentications#index'
end
