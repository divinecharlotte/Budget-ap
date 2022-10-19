Rails.application.routes.draw do
  get 'splash/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "splash#index"

end