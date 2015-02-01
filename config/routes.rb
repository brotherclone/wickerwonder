Rails.application.routes.draw do
  resources :images

  resources :characters
  root 'home#index'
end
