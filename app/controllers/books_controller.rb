class BooksController < ApplicationController
    def index
        @authors = Author.all
    end
    def new
        @author = Author.all
        @book = Book.new
    end
    def create
        @author = Author.all
        @book = Book.new(book_params)
        if @book.save
            redirect_to :browsebook
        else
           
        end
    end
    def edit
        @author = Author.all
        @book = Book.where(id: params[:id]).first
    end
    def update
        @author = Author.all
        @book = Book.where(id: params[:id]).first
        if @book.update(book_params)
            redirect_to :browsebook
        end
    end
    def destroy
        @book = Book.where(id: params[:id]).first
        if @book.destroy
            redirect_to :browsebook
        end
    end
    private
    def book_params
        params.require(:book).permit(:name, :year, :genre, :author_id)
    end
  
end