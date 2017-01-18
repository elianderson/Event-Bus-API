Rails.application.routes.draw do

  resources :organizations, except: [:update, :edit] do
    resources :events, except: [:update, :edit, :show]
  end

end
