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

  root to: 'usuarios#inicio'
  resources :equipment
  resources :centers
  resources :awards
  resources :clusters
  resources :industries
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
