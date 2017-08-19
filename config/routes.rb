Rails.application.routes.draw do
  get 'simulation/index' => 'simulation'

  get 'simulation/new'
  post 'simulation/simulate'
  get 'simulation/show'

  get 'home/index'
  root 'home#index'
  resources :attacks
  resources :pokemons
  resources :pokemon_species
  resources :pokemon_species do
    collection do
      get 'new'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
