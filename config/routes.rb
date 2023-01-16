Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
   get 'users', to: 'devise/sessions#create'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
