Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'

  resources :places, except: [:show] do
    resources :posts
  end

  resources :categories, only: [:show]

  resources :posts do
    resources :guesses, except: [:index, :show, :update]
    resources :tags, only: [:create]
  end

  resources :guesses, except: [:index, :show] do
    member do
      post "increase_score"
      post "decrease_score"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
