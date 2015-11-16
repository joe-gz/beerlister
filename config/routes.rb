Rails.application.routes.draw do
  devise_for :users
  root to: "beers#index"

  resources :beers do
    resources :drinklists
    resources :comments
  end
  
  resources :users do
    resources :beers
    resources :nights do
      resources :drinklists
    end
  end

  # resources :beers do
  #   resources :drinklists
  #   resources :comments
  # end

  end
