Rails.application.routes.draw do
  devise_for :users
  root 'info#index'
  get '/show_finances' => 'info#show_finances'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
