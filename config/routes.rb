Rails.application.routes.draw do
  root 'schedules#index'
  get 'schedules/search'
end
