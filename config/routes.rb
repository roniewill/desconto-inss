# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'show/:id', to: 'home#show', as: :user_info
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
