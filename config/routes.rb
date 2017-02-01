Rails.application.routes.draw do
  resources :donations
  resources :categories
  resources :donors
  get '/reports(/new)', to: 'reports#new'
  get '/reports/gik', to: 'reports#gik_report', defaults: { format: 'xslx' }

  devise_for :users
  devise_scope :user do
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unathenticated_root
    end
    authenticated :user do
      root to: 'donations#new', as: :authenticated_root
    end
  end
end
