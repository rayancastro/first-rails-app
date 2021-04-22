Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# HTTP request comes in
# Server checks on the routes file for the right path
# It calls the right controller / view

  # get '/', to: 'pages#home'
  root to: 'pages#home'

  get '/about', to: 'pages#about', as: :about_us
  get '/contact', to: 'pages#contact'
end
