Rails.application.routes.draw do
  resources :ty_notes
  resources :orders
  resources :customers

  root "root#root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
