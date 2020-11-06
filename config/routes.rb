Rails.application.routes.draw do
  get 'schedules/index'
  get 'schedules/search'
  root 'schedules#index'
  get 'schedules/search'
end
