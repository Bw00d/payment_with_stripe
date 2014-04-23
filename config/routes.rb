NonProfit::Application.routes.draw do
  resources :nonprofits
  resources :contributions, only: [:create]
  root to: 'nonprofits#index'
end
