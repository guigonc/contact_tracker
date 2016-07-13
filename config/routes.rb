Rails.application.routes.draw do
  resources :page_views

  resources :contacts
  root 'contacts#index'
end
