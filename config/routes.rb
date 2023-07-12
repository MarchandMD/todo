Rails.application.routes.draw do
  root to: "items#index"
  resources :items, only: %i[index new create edit update destroy]
end
