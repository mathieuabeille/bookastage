Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :stages, only: [:index, :show,:new, :create, :edit, :update] do
    resources :bookings, only: [ :create ]
  end

  resources :bookings, only: :index

  root to: 'pages#home'
end
