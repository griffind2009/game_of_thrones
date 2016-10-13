Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'houses#index'

resources :houses do
  resources :characters, only: [:index, :new, :create]
end
resources :characters
end
