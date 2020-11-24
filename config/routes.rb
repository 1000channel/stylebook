Rails.application.routes.draw do
  get 'hair_styles/index'
  devise_for :users
  root to: 'hair_styles#index'
end
