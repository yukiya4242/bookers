class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    flash[:notice]= "successfully!!!!"
    redirect_to book_path(@book)

  end
end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end


  def edit
  end
end

  private

  def book_params
  params.require(:book).permit(:title, :body) if params[:book].present?
end

