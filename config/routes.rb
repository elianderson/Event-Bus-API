Rails.application.routes.draw do
  resources :events
  resources :organizations, except: [:update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
