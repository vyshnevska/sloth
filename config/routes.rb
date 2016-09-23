Rails.application.routes.draw do

  resources :crumbs
  root 'application#index'

end
