Rails.application.routes.draw do
  resources :topics
  devise_for :users, controllers: { registrations: 'registration'}
end
