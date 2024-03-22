Rails.application.routes.draw do
  root "dictionaries#new"
  resources :dictionaries do
    resources :words
  end

end
