Rails.application.routes.draw do
  get 'matches/index'
  get 'matches/show'
  get 'leagues/index'
  get 'leagues/show'
  get 'clubs/index'
  get 'clubs/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
