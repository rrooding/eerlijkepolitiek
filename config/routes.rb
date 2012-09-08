Eerlijkepolitiek::Application.routes.draw do
  root to: 'dashboard#index'

  get 'login' => 'authentications#index'
  delete 'logout' => 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create'
end
