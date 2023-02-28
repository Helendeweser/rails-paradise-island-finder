Rails.application.routes.draw do
  devise_for :users
  root to: "islands#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'islands/new', to: 'islands#new'
  get 'islands/:id', to: 'islands#show'
  post 'islands', to: 'islands#create'
  get 'islands/:id/edit', to: 'islands#edit'
  patch 'islands/:id', to: 'islands#update'
  delete 'islands/:id', to: 'islands#destroy'

  get 'islands/:island_id/reservations/new', to: 'reservations#new'
  post 'islands/:island_id/reservations', to: 'reservations#create'

  post 'islands/:island_id/reviews', to: 'reviews#create'

end
