class UtapsController < ApplicationController
    def index
        render "index", layout:"home_principal"
    end
    def acerca_de
        render "acerca_de", layout:"home"
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
            render "index", layout:"home_principal"
        else
            @mensaje = 'La direccion de correo no existe'
            @tipo = 'warning'
            render "index", layout:"home_principal"
        end
    end
    def ingresar
        if User.exists?(:login=>params[:txtUser],:password=>params[:txtPassword])
            @mensaje = 'Bienvenido'
            @tipo = 'success'
            @login_usuario=params[:txtUser]
            perfiluser=User.find_by(:login=>params[:txtUser])
            session[:loginUp] = [perfiluser.id,params[:txtUser],perfiluser.primer_nombre+' '+perfiluser.segundo_nombre+' '+perfiluser.primer_apellido,perfiluser.perfil_id]
            render "home", layout:"home"
        else
            @mensaje = 'Usuario o clave incorrecto'
            @tipo = 'warning'            
            render "index", layout:"home_principal"
        end
    end

    def cerrar_session
        session.delete(:loginUp)
        @current_user = nil
        render "index", layout:"home_principal"
    end

    #Ejercicio Final
    def product
        arrayPrd = [[1, 'Arroz', 1000, 7],[2, 'Azucar', 2000, 5],[3, 'Tomate', 1500, 9]]
        session[:productos] = arrayPrd
        session[:carrito] = []
        render "product"#, layout:"home_principal"
    end

    def add_product
        #byebug
        i = 0
        l = 0
        x = false
        arrayPrd = session[:productos]
        arrayCar = session[:carrito]
        arrayPrd.each do |item|
            if item[0].eql?(params[:id].to_i) and item[3] != 0
                arrayPrd[i][3] = item[3]-1
                if arrayCar.length.eql?(0)
                    arrayCar.push [item[0],item[1],item[2],1]
                else
                    arrayCar.each do |car|
                        if car[0].eql?(params[:id].to_i)
                            arrayCar[l][3] = car[3]+1
                            #arrayCar[l][2] = item[2]*car[3]
                            x = true
                        end
                        l=l+1
                    end
                    l=0
                    if x.eql?(false)
                        arrayCar.push [item[0],item[1],item[2],1]
                    end
                end
            end
            i = i+1
        end
        session[:productos] = arrayPrd
        session[:carrito] = arrayCar
        render "product"
    end

    def delete_product
        i = 0
        arrayPrd = session[:productos]
        arrayCar = session[:carrito]
        arrayCar.each do |item|
            if item[0].eql?(params[:id].to_i) and item[3] != 1
                arrayCar[i][3] = item[3]-1
            elsif item[0].eql?(params[:id].to_i) and item[3].eql?(1)
                arrayCar.delete(item)
            end
            i = i+1
        end
        i=0
        arrayPrd.each do |item|
            if item[0].eql?(params[:id].to_i)
                arrayPrd[i][3] = item[3]+1
            end
            i = i+1
        end
        session[:productos] = arrayPrd
        session[:carrito] = arrayCar
        render "product"
    end
end
