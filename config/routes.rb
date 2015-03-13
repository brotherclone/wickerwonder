Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => 'callbacks' }

  resources :images

  resources :characters

  get 'comic', to: 'comic#index'
  get 'pitchmaterials', to: 'pitchmaterials#index'
  get 'soon', to:'comingsoon#index'

  if Rails.env.production?
    root 'comingsoon#index'
  else
    root 'home#index'
  end

end
