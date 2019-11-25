Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :mentors
  resources :students
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
  get 'main/login'
  get 'main/parentProfile'
end
