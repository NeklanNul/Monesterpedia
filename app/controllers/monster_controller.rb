class MonsterController < ApplicationController
    def index
        @monsters = Monster.all
    end
    def addmon
    end
    def delmom
    end
    def browsemon
    end
    def definition
    end


    def new
        @monsters = Monster.new
    end

    def create
        @monsters = Monster.new(my_param)
        if @products.save
            redirect_to @monsters
        else
            render :new
        end
    end

    private
    def my_param
        params.require(:monster).permit(:name, :image_url,:origin, :description)
    end
end