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

  # Account Operation
  match '/account_operations/new/:account_id/:tipo', to: 'account_operations#new', via: :get, as: :new_account_operation
  match '/account_operations/', to: 'account_operations#create', via: :post, as: :save_account_operation
  match '/account_operations/:id', to: 'account_operations#show', via: :get, as: :account_operations

  # Physical Person
  resources :physical_people

  # Legal Person
  resources :legal_people

  # Address
  match 'addresses/:id', to: 'addresses#show', via: :get, as: :address
  match 'addresses/:id/edit', to: 'addresses#edit', via: :get, as: :edit_address
  match 'addresses/:id', to: 'addresses#update', via: :patch, as: :update_address

end
