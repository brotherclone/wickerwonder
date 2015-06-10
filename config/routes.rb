Rails.application.routes.draw do
  resources :situations

  resources :materials

  resources :downloads

  resources :characters

  get 'soon', to:'comingsoon#index'
  get 'home', to:'wicker#index'

  # if Rails.env.production?
  #   root 'comingsoon#index'
  # else
  #   root 'wicker#index'
  # end
  root 'wicker#index'
end
