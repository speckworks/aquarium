Rails.application.routes.draw do
  resources :vegetations
  resources :artifacts
  resources :fish
  resources :aquaria
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
