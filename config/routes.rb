Rails.application.routes.draw do
  
  
  root to: "homes#top"
  get '/home/about', to: 'homes#about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :update, :edit]
  resources :users, only: [:edit, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
