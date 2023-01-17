Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
   get 'users', to: 'devise/sessions#create'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
