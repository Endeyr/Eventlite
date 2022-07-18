Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  get '/user/:id', to: 'users#profile', as: :user
  resources :users, only: :index
  root 'events#index'
  resources :events do
    member do
      get 'rsvp'
      get 'cancel_rsvp'
    end
  end
  devise_for :users
end
