Rails.application.routes.draw do
  resources :clubs, only: %i[index show]
  resources :leagues, only: %i[index show]
  resources :mathces, only: %i[index show]
end
