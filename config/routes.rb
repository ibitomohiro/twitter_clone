Rails.application.routes.draw do
  get '/tweeets', to: 'tweeets#index'
end
