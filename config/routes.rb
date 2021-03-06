Rails.application.routes.draw do
  resources :reviews
  resources :climbs
  resources :user_climbs
  resources :users

  post '/login', to: 'auth#create'
  # get '/profile', to: 'users#profile' 
  get '/climbs/:id/reviews', to: 'climbs#reviews'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
