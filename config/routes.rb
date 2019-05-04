Rails.application.routes.draw do
  resources :orders
  resources :customers
  resources :ecomercs
  resources :factors
  resources :shops
  resources :employees
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
