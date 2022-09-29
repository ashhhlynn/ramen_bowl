Rails.application.routes.draw do
  resources :toppings
  resources :topping_options
  resources :bases
  resources :base_options
  resources :noodles
  resources :noodle_options
  resources :orders
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
