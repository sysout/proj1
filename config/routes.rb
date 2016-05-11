Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture' => 'pokemon#capture'
  post 'damage' => 'pokemon#damage'
end
