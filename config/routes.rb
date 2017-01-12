Rails.application.routes.draw do

  resources :jobs, :boats

  devise_for :users
  
  root to: "boats#index"

  post 'boats/add_job'

  post 'boats/remove_job'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
