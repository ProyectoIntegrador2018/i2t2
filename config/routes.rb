# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_platforms, path: 'admin_plataforma', controllers: {
    # sessions: 'sessions'
  }
  devise_for :admin_centers, path: 'admin_centro', controllers: {
    # sessions: 'admin_centers/sessions'
  }
  resources :idti_areas
  resources :idti_services
  resources :centro_investigacions

  root to: 'users#inicio'
  resources :equipment
  resources :centers
  resources :awards
  resources :clusters
  resources :industries
  devise_for :users,
             :controllers  => {
             :registrations => 'registrations',
             }
  post '/users', :to => 'users#create', :as => :user
  scope "/admin" do
    resources :users, only: [:edit]
  end
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'admin/users/:id/update' => 'users#edit', :via => :get, :as => :admin_edit_user
  match 'admin/users/:id/update' => 'users#update', :via => :put, :as => :admin_update_user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
