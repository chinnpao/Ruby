class AuthorsController < ApplicationController
  def new
    @page_title = "Add New Author"
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author created successfully."
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = "Edit Author"
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
      flash[:notice] = "Author updated successfully."
      redirect_to authors_path
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    if @author.destroy
      flash[:notice] = "Author deleted successfully."
      redirect_to authors_path
    else
      render 'index'
    end
  end

  def index
    @page_title = "All Author"
    @authors = Author.all
  end

  def show
  end

  private 
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end

end
