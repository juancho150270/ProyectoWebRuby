class ProfilesController < ApplicationController
    def show
        render 'register',layout: 'home'
    end
    def register
        render 'register',layout: 'home'
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
    def save_register
        profile_search_id=0
        id=0
        profile_search_id=Profile.order("id").last
        id=profile_search_id.id+1

        profile=Profile.new
        profile.id=id
        profile.descripcion=params[:txtDescripcion]
        
        if profile.save
            @mensaje="Rol creado correctamente"
            @tipo="success"
            render 'register',layout: 'home'
        else
            @mensaje="Error al crear el rol"
            @tipo="warning"
            render 'register',layout: 'home'
        end
    end
end
