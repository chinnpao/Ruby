class BooksController < ApplicationController
  def new
    @page_title = "Add New Book"
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created successfully."
      redirect_to books_path
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book updated successfully."
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def edit
    @page_title = "Edit Book"
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:notice] = "Book deleted successfully."
      redirect_to books_path
    else
      render 'index'
    end
  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  private
    def book_params
      params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :price, :buy, :format, :coverpath, :year, :excerpt, :pages)
    end
end
