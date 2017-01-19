Rails.application.routes.draw do
  resources :donations
  resources :categories
  resources :donors
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
