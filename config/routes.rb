Rails.application.routes.draw do
  devise_for :admin, controllers:{
    session: 'admin/session',
    registration: 'admin/registration',
  }

  devise_for :user,  controllers:{
    session: 'users/session'
  }
  get 'pages/home'
  get 'pages/users'
  get 'pages/admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
end
