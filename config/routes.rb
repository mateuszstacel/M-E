Rails.application.routes.draw do
  devise_for :users
  resources :spots
  resources :information


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :spots do
    resources :comments
  end
  resources :follows
  authenticated :user do
    root 'spots#index', as: :authenticated_root
    get 'users/:id', to: 'users#show', as: :profile
    get 'map', to: 'spots#map'

    post 'spots/follow', to: 'follows#follow', as: :follow_spot
    post 'spots/unfollow', to: 'follows#unfollow', as: :unfollow_spot
  end

  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

  get 'mapadresses', to: 'information#mapadresses'
    get 'full_map_addresses', to: 'information#full_map_addresses'

end
