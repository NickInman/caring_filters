Rails.application.routes.draw do
  root 'filters#index' #Home
  get 'filters/index'
  post 'filters/index'
end
