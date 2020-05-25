# frozen_string_literal: true

Rails.application.routes.draw do
  resources :entrepreneurs
  resources :scientific_articles
  resources :intellectual_properties
  resources :researchers
  resources :companies
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  resources :idti_areas
  resources :idti_services
  resources :centro_investigacions

  resources :equipment
  resources :centers
  resources :awards
  resources :clusters
  resources :industries
  devise_for :users,
             :controllers  => {
             :registrations => 'registrations',
             }
  devise_scope :user do
    authenticated :user do
      root 'centers#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :users do
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
