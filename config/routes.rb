Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'

    resources :places do
      resources :posts
    end

    resources :categories

    resources :posts do
      resources :guesses
      resources :tags, only: [:new, :create]
    end





    resources :guesses do
      member do
            post "increase_score"
            post "decrease_score"
        end
      end
  # resources :places do
  #   resources :posts do
  #     resources :guesses
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
