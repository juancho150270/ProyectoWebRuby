class StudentsController < ApplicationController
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
end
