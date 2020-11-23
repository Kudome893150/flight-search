Rails.application.routes.draw do
  devise_for :users
  root 'schedules#index'
  get 'schedules/search'
  get 'airlines/index'
  get 'airplanes/index'
  resources :airplanes, only:[:show]
end
