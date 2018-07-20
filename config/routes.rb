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
  get "observador" => "users#home"
  get "/students/index"
  get "/profiles/index"
  get "/attendants/index"
  get "/genders/index"
  get "/grades/index"
  get "/observer_heads/index"
  get "/tracing_types/index"
  get "/working_days/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Crear un alias, con la asignacion le indico el controlador y accion.
  # get "users" => "users#index"
  # post "users/login"
  # get "users/register"
  # post "users/save_register"
  # get "profiles/register"
  # post "profiles/save_register"
  # get "students/register"
  # post "students/save_register"
  # get "users/consult"
  # get "profiles/consult"
  # get "students/consult"
  # get "users/modify"
  # get "profiles/modify"
  # get "students/modify"
  # get "users/remove"
  # get "profiles/remove"
  # get "students/remove"
# Methods and Routes Observar Head
  #get "observer_heads" => "observer_heads#index"
# Methods and Routes Observar Details
  #get "observer_dateils" => "observer_dateils#index"
end
