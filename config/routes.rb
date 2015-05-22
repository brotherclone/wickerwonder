Rails.application.routes.draw do
  resources :characters
  root 'comingsoon#index'
end
