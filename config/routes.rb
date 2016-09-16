Rails.application.routes.draw do

  devise_for :users,
    controllers: {
      sessions:      'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords',
      omniauth_callbacks: 'callbacks'
    }

  root 'pages#dashboard'
  resources :places do
    resources :place_photos, only: [:create] do
    end
  end

  get '/:location', to: 'pages#dashboard', as: :dashboard_pages
end
