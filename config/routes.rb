Rails.application.routes.draw do
  root "dictionaries#new"
  resources :dictionaries


end
