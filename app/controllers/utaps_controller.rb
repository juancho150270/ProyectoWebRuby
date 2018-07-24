class UtapsController < ApplicationController
    def login
        render "login"
    end
    def ingresar
        if User.exists?(:login=>params[:txtUser],:password=>params[:txtPassword])
            @mensaje = 'Bienvenido'
            @tipo = 'success'
            @login_usuario=params[:txtUser]
            perfiluser=User.find_by(:login=>params[:txtUser])
            @perfil_usuario=perfiluser.perfil_id
            if @perfil_usuario==2
                render "home", layout:"home"
            else
                render "home", layout:"home_user"
                
            end
        else
            #NotifyMailer.send_mail(params[:txtUser],'Ingreso incorrecto').deliver
            @mensaje = 'Usuario o clave incorrecto'
            @tipo = 'warning'
            render "login"
        end
    end
end
