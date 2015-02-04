Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :images

  resources :characters
  get 'comic', to: 'comic#index'
  get 'pitchmaterials', to: 'pitchmaterials#index'
  root 'home#index'
end
