Rails.application.routes.draw do

  root 'pages#dashboard'
  get '/:location', to: 'pages#dashboard', as: :dashboard_pages
end
