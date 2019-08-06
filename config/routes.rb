Rails.application.routes.draw do
  resources :emails
  resources :phones
  resources :addresses
  resources :projects
  resources :buildings
  resources :employees
  resources :contacts
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
