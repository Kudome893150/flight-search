Rails.application.routes.draw do
  devise_for :users
  root 'schedules#index'
  get 'schedules/search'
end
