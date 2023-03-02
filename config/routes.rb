Rails.application.routes.draw do
  devise_for :users
  root to: "islands#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # # Islands routes
  # get 'islands/new', to: 'islands#new'
  # get 'islands/:id', to: 'islands#show', as: 'island'

  # patch 'islands/:id', to: 'islands#update'
  # post 'islands', to: 'islands#create'
  # get 'islands/:id/edit', to: 'islands#edit', as: 'edit_island'

  # delete 'islands/:id', to: 'islands#destroy'

  # # Reservations routes
  # get 'islands/:island_id/reservations/new', to: 'reservations#new', as: 'reservations'
  # post 'islands/:island_id/reservations', to: 'reservations#create'

  # # Reviews routes
  # post 'islands/:island_id/reviews', to: 'reviews#create'

  # root to: 'islands#index'
  resources :islands do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:create]
  end
end
