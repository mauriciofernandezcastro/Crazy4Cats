Rails.application.routes.draw do
  resources :blogs
  resources :cats
  resources :crazies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
