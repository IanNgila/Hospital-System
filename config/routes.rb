Rails.application.routes.draw do
  resources :laboratories
  resources :pharmacies
  resources :users

  # auth routes start
  get "/users", to: "users#index"
  # retreve user data from db using sessions hash
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  # session logout - clears user of session
  delete "/logout", to: "sessions#destroy"
  # sessions create login
  post "/login", to: "sessions#create"

  #
  # get "/auth", to: ""
  # auth routes end


  resources :accountants
  resources :staffs
  resources :tickets
  resources :patients
  resources :doctors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
