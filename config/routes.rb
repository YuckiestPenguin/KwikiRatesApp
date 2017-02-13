Rails.application.routes.draw do
  resources :carrier_types
  resources :carriers
  resources :port_types
  resources :ports
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
