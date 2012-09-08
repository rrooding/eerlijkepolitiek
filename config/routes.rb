Eerlijkepolitiek::Application.routes.draw do
  get "trophies/index"

  root to: 'dashboard#index'

  get 'login' => 'authentications#index'
  delete 'logout' => 'sessions#destroy'
  get 'trophies' => 'trophies#index'
  match '/auth/:provider/callback', to: 'sessions#create'
end
