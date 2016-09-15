Rails.application.routes.draw do

  devise_for :users,
    controllers: {
      sessions:      'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
    }

  root 'pages#dashboard'
  get '/:location', to: 'pages#dashboard', as: :dashboard_pages
end
