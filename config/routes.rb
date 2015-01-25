Rails.application.routes.draw do

  resources :characters
  root 'home#index'
end
