# frozen_string_literal: true

Rails.application.routes.draw do
  resources :employees
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'home#index'

  get 'show/:id', to: 'home#show', as: :user_info
end
