Eerlijkepolitiek::Application.routes.draw do
  root to: 'dashboard#index'

  get 'login' => 'authentications#index'
  match '/auth/:provider/callback', to: 'sessions#create'
end
