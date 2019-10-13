# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :todos do
        resources :items
        resource :items_set, only: :destroy
      end
    end
  end
end
