Rails.application.routes.draw do
  devise_for :users
  resources :bikes do
    resources :bookings, only: [:new, :create]
  end
  root to: "pages#home"
  get 'home', to: 'pages#home', as: 'home'
  resources :bookings, only: [:index, :edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
