Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"
  resources :clubs, only: %i[index show]
  resources :leagues, only: %i[index show]
  resources :matches, only: %i[index show]
end
