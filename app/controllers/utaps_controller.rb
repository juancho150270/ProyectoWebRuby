class UtapsController < ApplicationController
    def index
        render "index", layout:"home_principal"
    end
    def login
        render "login2", layout:"home_principal"
    end
    def olvido_clave
        render "olvido", layout:"home_principal"
    end
    def recuperar_clave
        if User.exists?(:correo=>params[:txtCorreo])
            usuario=User.find_by(:correo=>params[:txtCorreo])
            @clave_recuperada=usuario.password
            @mensaje = 'Se envio la contraseña a su cuenta de correo'
            @tipo = 'success'
            NotifyMailer.send_mail_clave_recuperada(params[:txtCorreo],'Recuperacion de contraseña',@clave_recuperada).deliver
            render "login2", layout:"home_principal"
        else
            @mensaje = 'La direccion de correo no existe'
            @tipo = 'warning'
            render "login2", layout:"home_principal"
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
            render "index", layout:"home_principal"
        end
    end
end
