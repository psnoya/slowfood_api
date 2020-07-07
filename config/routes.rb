Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip: [:omniauth_callbacks]
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index], constraints: { format: 'json' }
      resources :orders, only: [:create, :update], constraints: { format: 'json' }
    end
  end
end