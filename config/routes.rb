Rails.application.routes.draw do
  # get "restaurants/:restaurant_id/reviews",     to: "reviews#index"

  root to: 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end
end
