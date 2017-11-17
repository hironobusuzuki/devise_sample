Rails.application.routes.draw do
  root to: "clients#index"

  #devise_for :clients
  devise_for :clients, path: :users
  devise_for :admins

  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
