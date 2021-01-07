Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations'
    }

  root 'tops#index' 
  resources :tops, only: [:index]

  resources :users, only: [:show]

  
  resources :categories, only: [:show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
    resources :post_category_relations, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
