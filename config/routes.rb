Rails.application.routes.draw do
  resources :championships
  resources :matches
  resources :players
  resources :teams
  get root to: "home#index"
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
