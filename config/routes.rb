Rails.application.routes.draw do

  resources :crumbs
  root 'application#index'

  get '/we_will_miss_you', to: 'application#we_will_miss_you'
end
