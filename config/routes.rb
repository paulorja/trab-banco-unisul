Rails.application.routes.draw do

  root 'visitors#index'
  match 'auth/manager', to: 'visitors#manager', via: :post
  match 'auth/legal_person', to: 'visitors#legal_person', via: :post
  match 'auth/physical_person', to: 'visitors#physical_person', via: :post

end
