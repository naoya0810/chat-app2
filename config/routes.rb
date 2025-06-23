# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  resources :users, only: %i[edit update destroy]
  resources :rooms, only: %i[new create] do
    resources :messages, only: %i[index create]
  end
end
