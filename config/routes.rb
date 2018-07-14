Rails.application.routes.draw do
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Crear un alias, con la asignacion le indico el controlador y accion.
  get "users" => "users#index"
  post "users/login"
  get "users/register"
  post "users/save_register"
end
