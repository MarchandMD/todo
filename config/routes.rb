Rails.application.routes.draw do
  root to: "items#index"
  resources :items, only: %i[index new create edit update destroy]
  resources :past_items, only: ["index"]
  resources :completed_items, only: ["index"]
end
