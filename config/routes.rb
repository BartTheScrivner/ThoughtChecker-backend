Rails.application.routes.draw do
  resources :entries
  resources :users 
  resources :affirmations
  resources :friendships

  #Logins/Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
