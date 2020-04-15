# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  devise_for :admin_platforms, path: 'administrador', controllers: {
  }
  devise_for :admin_centers, path: 'admin_centro', controllers: {
    # sessions: 'admin_centers/sessions'
  }
  resources :idti_areas
  resources :idti_services
  resources :centro_investigacions

  root to: 'centers#index'
  resources :equipment
  resources :centers
  resources :awards
  resources :clusters
  resources :industries
  devise_for :users,
             :controllers  => {
             :registrations => 'registrations',
             }
  resources :users do
    # member do
    #   post '/users', :to => 'users#create', :as => :user
    # end

    collection do
       post :import
    end
  end
  scope "/admin" do
    resources :users, only: [:edit, :index]
  end
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'admin/users/:id/update' => 'users#edit', :via => :get, :as => :admin_edit_user
  match 'admin/users/:id/update' => 'users#update', :via => :put, :as => :admin_update_user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
