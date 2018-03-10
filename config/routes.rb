Rails.application.routes.draw do
  get 'simulate' => 'simulation#index'

  get 'simulation/search'

  resources :pokemons
  root 'pokemons#index'
  get '/search' => 'pokemons#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
