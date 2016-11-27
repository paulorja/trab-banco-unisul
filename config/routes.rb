Rails.application.routes.draw do


  # Auth
  root 'visitors#index'
  match 'auth/manager', to: 'visitors#manager', via: :post
  match 'auth/legal_person', to: 'visitors#legal_person', via: :post
  match 'auth/physical_person', to: 'visitors#physical_person', via: :post
  match 'auth/logout', to: 'visitors#logout', via: :get

  # Manager
  match 'manager', to: 'manager#index', via: :get

  # Person
  match 'person', to: 'person#index', via: :get

  # Agency
  resources :agencies

  # Account
  resources :accounts

end
