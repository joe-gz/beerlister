Rails.application.routes.draw do
  devise_for :users
  # devise_scope :user do
  #   get "sign_in", to: "devise/beers#index"
  # end

  root to: "users#index"

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

  # PZ - are these triple nested resources?

  # resources :beers do
  #   resources :drinklists
  #   resources :comments
  # end

  end
