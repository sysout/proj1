Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons, only: [:new, :create]
  patch 'capture' => 'pokemons#capture'
  post 'damage' => 'pokemons#damage'
end
