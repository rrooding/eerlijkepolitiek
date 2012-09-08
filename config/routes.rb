Eerlijkepolitiek::Application.routes.draw do
  resources :trophies, only: [:index, :show]

  root to: 'dashboard#index'

  get 'login' => 'authentications#index'
  delete 'logout' => 'sessions#destroy'
  get 'trophies' => 'trophies#index'
  match '/auth/:provider/callback', to: 'sessions#create'
end
