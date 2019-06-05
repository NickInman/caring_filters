Rails.application.routes.draw do
  get 'results/index'
  root 'filters#index' #Home
  get 'filters/index'
  post 'filters/index'
end
