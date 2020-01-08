Rails.application.routes.draw do
  devise_for :users
  get 'seasonings' => 'seasonings#index'
  get 'seasonings/new' => 'seasonings#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
