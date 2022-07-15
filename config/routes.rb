Rails.application.routes.draw do
  resources :users
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :events
  root 'events#index'
  get '*path' => redirect('/')
end
