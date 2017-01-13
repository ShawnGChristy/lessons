Rails.application.routes.draw do
  devise_for :users
  resources :lessons
  resources :posts
  root "posts#index"
end
