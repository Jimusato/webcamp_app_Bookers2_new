Rails.application.routes.draw do
  devise_for :users
  
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   resources :homes, only: [:new, :cerate, :show]

   resources :books

   resources :users

   get 'home/about' => 'homes#show', as: 'about'
  end