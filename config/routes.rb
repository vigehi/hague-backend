Rails.application.routes.draw do
  resources :user_types
  # get 'home/index'
  # devise_for :users
  devise_for :users, controllers: {
                       registrations: "users/registrations",
                     }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
