Rails.application.routes.draw do
  root "dictionaries#new"
  resources :dictionaries do
    resources :words do
      collection do
        get :review
      end
    end
  end


end
