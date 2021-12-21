Rails.application.routes.draw do
  resources :brands, only: [:index]
  resources :products
  resources :departments, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
