Rails.application.routes.draw do

  resources :contact
  resources :jobs collection do
      get :search
    end
  end
  resources :employers
  resources :for_employers
  resources :let_the_job_find_you
  resources :about

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
