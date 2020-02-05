Rails.application.routes.draw do
  devise_for :users
  resources :flavors do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "flavors#index"
  resources :users do 
    member do
      get 'image'
    end
  end
end
