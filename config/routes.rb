Rails.application.routes.draw do
  root 'municipe#index'

   resources :municipe, only: %i[index show new create edit update]
end
