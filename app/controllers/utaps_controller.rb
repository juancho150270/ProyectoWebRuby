class UtapsController < ApplicationController
    def login
        render "login2"
    end
    def olvido_clave
        render "olvido"
    end
    def recuperar_clave
        if User.exists?(:correo=>params[:txtCorreo])
            usuario=User.find_by(:correo=>params[:txtCorreo])
            @contrasena_recuperada=usuario.password
            @mensaje = 'Por favor revise su cuenta de correo'
            @tipo = 'success'
            NotifyMailer.send_mail(params[:txtCorreo],'Recuperacion de contraseña').deliver
            render "olvido"
        else
            @mensaje = 'La direccion de correo no existe'
            @tipo = 'warning'
            render "login2"
        end
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
            @mensaje = 'Usuario o clave incorrecto'
            @tipo = 'warning'
            render "login"
        end
    end
end
