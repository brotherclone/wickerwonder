Rails.application.routes.draw do
  resources :characters

  get 'soon', to:'comingsoon#index'

  if Rails.env.production?
    root 'comingsoon#index'
  else
    root 'wicker#index'
  end


end
