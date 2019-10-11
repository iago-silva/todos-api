# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :todos do
        resources :items
        resource :delete_all_items, only: :destroy
      end
    end
  end
end
