Rails.application.routes.draw do


  resources :places do 
    resources :posts do
      resources :guesses
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
