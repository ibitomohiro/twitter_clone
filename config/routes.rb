Rails.application.routes.draw do
  get '/tweeets', to: 'tweeets#index'
  resources :tweeets
end
