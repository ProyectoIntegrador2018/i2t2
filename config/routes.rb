# frozen_string_literal: true

Rails.application.routes.draw do
  resources :idti_areas
  resources :idti_services
  resources :centro_investigacions

  root to: 'usuarios#inicio'
  resources :equipment
  resources :centers
  resources :awards
  resources :clusters
  resources :industries
  devise_for :users,
             :controllers  => {
             :registrations => 'registrations',
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
