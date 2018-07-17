Rails.application.routes.draw do
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Crear un alias, con la asignacion le indico el controlador y accion.
  get "users" => "users#index"
  post "users/login"
  get "users/register"
  post "users/save_register"
  get "profiles/register"
  post "profiles/save_register"
  get "students/register"
  post "students/save_register"
  get "users/consult"
  get "profiles/consult"
  get "students/consult"
  get "users/modify"
  get "profiles/modify"
  get "students/modify"
  get "users/remove"
  get "profiles/remove"
  get "students/remove"

end
