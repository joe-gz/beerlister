Rails.application.routes.draw do
  devise_for :users
  root to: "beers#index"

  resources :beers
  resources :users do
    resources :nights
    resources :beers
  end

  end
