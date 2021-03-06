Rails.application.routes.draw do

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'recipes#index'

  resources :recipes, only: [:index, :show, :create, :new, :update] do
    resources :sporks, only: [:create, :index]
  end


end
