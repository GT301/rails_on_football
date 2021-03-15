Rails.application.routes.draw do
  resources :pages, except: [:show]
  get "/pages/:permalink" => "pages#permalink", as: "permalink"

  resources :clubs, only: %i[index show]
  resources :leagues, only: %i[index show]
  resources :matches, only: %i[index show]
  root to: "home#index"
end
