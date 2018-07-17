class UsersController < ApplicationController
    def index
        render 'index'
    end
    def consult
        render 'consult',layout: 'home'
    end
    def modify
        render 'modify',layout: 'home'
    end
    def remove
        render 'remove',layout: 'home'
    end
    def login
        if User.exists?(:login=>params[:txtUser],:password=>params[:txtPassword])
            @mensaje="Usuario y clave correcto"
            @tipo="success"
            render 'home',layout: 'home'
        else
            @mensaje="Usuario o clave incorrecto"
            @tipo="warning"
            render 'index'
        end
        
    end
    def register
        @perfiles=Profile.all
        render 'register',layout: 'home'
    end
    def save_register
        @perfiles=Profile.all
        if !params[:txtPassword].strip.eql?(params[:txtConfirmarPassword].strip)
            @mensaje="Password no coincide"
            @tipo="warning"
            render 'register',layout: 'home'
            return
        end

        user_search_id=0
        id=0
        user_search_id=User.order("id").last
        id=user_search_id.id+1

        user=User.new
        user.id=id
        user.login=params[:txtLogin]
        user.password=params[:txtPassword]
        user.perfil_id=params[:ddlPerfiles]
        
        if user.save
            @mensaje="Usuario creado correctamente"
            @tipo="success"
            @perfiles=Profile.all
            render 'register',layout: 'home'
        else
            @mensaje="Error al crear el usuario"
            @tipo="warning"
            @perfiles=Profile.all
            render 'register',layout: 'home'
        end
    end
end
