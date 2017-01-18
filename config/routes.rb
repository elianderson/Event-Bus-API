Rails.application.routes.draw do

  resources :organizations, except: [:update, :edit] do
    resources :events, except: [:update, :edit, :show]
  end

  get '/events', to: 'events#index_all'

end
