Rails.application.routes.draw do
  resources :posts
  resources :topics
  devise_for :users, controllers: { registrations: 'registration'}
end
