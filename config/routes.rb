Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies 
    resources :showtimes do
      resources :ticket_orders
  end

  # get '/ticket_orders' => 'ticket_orders#index'
  # get '/ticket_orders/new' => 'ticket_orders#new'
  # get '/ticket_orders' => 'ticket_orders#create'
  # get '/ticket_orders/:id' => 'ticket_orders#show'
  root 'movies#index'
end
