Rails.application.routes.draw do

  resources :places
  devise_for :users,
    controllers: {
      sessions:      'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords',
      omniauth_callbacks: 'callbacks'
    }

  root 'pages#dashboard'
  get '/:location', to: 'pages#dashboard', as: :dashboard_pages
end
