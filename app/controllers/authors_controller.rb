class AuthorsController < ApplicationController
    def index
    end
    def new
        @author = Author.new
    end
    def create
        @author = Author.new(my_params)
        if @author.save
            redirect_to authors_path
        else
           
        end
    end
    def edit
        @author = Author.where(id: params[:id]).first
    end
    def update
        @author = Author.where(id: params[:id]).first
        if @author.update(my_params)
            redirect_to :browseauth
        end
    end
    def destroy
        @author = Author.where(id: params[:id]).first

        if @author.destroy
            redirect_to :browseauth
        end
    end
    private
    def my_params
        params.require(:author).permit(:name, :nationality, :age, :alive)
    end
  
end