Rails.application.routes.draw do
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'works', to: 'pages#works'
  get 'contact', to: 'pages#contact'
  post '/contact', to: 'pages#contact_submit'

  get '/contact-feedback', to: 'pages#contact_feedback'

  # authenticate :user do
  #   resources :messages, only: [:index, :show]
  # end

end
