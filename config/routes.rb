Rails.application.routes.draw do
  root to: "items#index"
  resource :items, only: %i[index new create edit update destroy]
end
