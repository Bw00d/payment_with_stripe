NonProfit::Application.routes.draw do
  resources :nonprofits
  root to: 'nonprofits#index'
end
