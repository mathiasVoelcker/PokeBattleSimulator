Rails.application.routes.draw do

  resources :pokemons
  root 'pokemons#index'
  get '/search' => 'pokemons#search'

  resources :simulation
  get 'simulate' => 'simulation#index'
  get 'simulation/search' => 'simulation#search'
  get 'simulation/simulate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
