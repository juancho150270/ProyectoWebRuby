Rails.application.routes.draw do
  resources :kin_types
  resources :document_types
  resources :observer_states
  resources :working_days
  resources :users
  resources :tracing_types
  resources :profiles
  resources :observer_heads
  resources :observer_details
  resources :grades
  resources :genders
  resources :attendants
  resources :students
  get "observador" => "utaps#index"
  post "utaps/login"
  get "utaps/login"
  get "utap" => "utaps#login"
  post "utaps/ingresar"
  get "/utaps/cerrarsesion" => "utaps#login"
  get "/cerrarsesion" => "utaps#login"
  get "/utaps/olvido_clave"
  post "utaps/recuperar_clave"
  
end
