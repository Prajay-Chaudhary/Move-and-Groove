Rails.application.routes.draw do
  resources :activities
  devise_for :users
  root 'welcome#index'
    devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
end

