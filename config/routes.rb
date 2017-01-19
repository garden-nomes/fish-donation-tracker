Rails.application.routes.draw do
  resources :donations
  resources :categories
  resources :donors

  devise_for :users
  devise_scope :user do
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unathenticated_root
    end
    authenticated :user do
      root to: 'donations#index', as: :authenticated_root
    end
  end
end
