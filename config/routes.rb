Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists
    end

    resources :lists, only: [] do
      resources :items, only: [:create]
    end

    resources :items, only: [:destroy, :update]
  end
end
