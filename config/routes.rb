Rails.application.routes.draw do
  resources :lessons
  resources :posts
  root "posts#index"
end
