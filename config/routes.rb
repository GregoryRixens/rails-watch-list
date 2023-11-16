# config/routes.rb

Rails.application.routes.draw do
  get "up" => "rails/health#show", view: :rails_health_check

  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  resources :movies, only: [:index]

  root "lists#index"
end
