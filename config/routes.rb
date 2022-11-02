Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
    devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
end

