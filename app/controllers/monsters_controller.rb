class MonstersController < ApplicationController
    def index
        @books = Book.all
    end
    def new
        @book = Book.all
        @monster = Monster.new
    end
    def create
        @book = Book.all
        @monster = Monster.new(monster_params)
        if @monster.save
            redirect_to monsters_path
        end
    end
    def edit
        @book = Book.all
        @monster = Monster.where(id: params[:id]).first
    end
    def update
        @book = Book.all
        @monster = Monster.where(id: params[:id]).first
        if @monster.update(monster_params)
            redirect_to :browsemon
        end
    end
    def destroy
        @monster = Monster.where(id: params[:id]).first
        if @monster.destroy
            redirect_to :browsemon
        end
    end
    def definition
    end



    private
    def monster_params
        params.require(:monster).permit(:name, :origin, :description, :book_id)
    end
  
end