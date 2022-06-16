class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save!
    redirect_to book_path(@book.id)
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    @user = @book.user
  end

  def update
    
  end
  
  def edit
    @book = Book.find(params[:id])  
  end
  
  def destroy
    @book = Book.find(params[:id]) 
    @book.destroy  
    redirect_to books_path 
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end


 