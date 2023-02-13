Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root to: 'restaurants#index'
  # root "articles#index"
  # get '/restaurants', to: 'restaurants#index', as: :restaurants
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants#create'
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get '/restaurants/:id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post '/restaurants/:id/reviews', to: 'reviews#create'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
