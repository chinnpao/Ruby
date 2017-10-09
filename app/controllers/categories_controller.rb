class CategoriesController < ApplicationController
  def new
    @page_title = "Add New Category"
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category created successfully."
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = "Edit Category"
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category updated successfully."
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:notice] = "Category deleted successfully."
      redirect_to categories_path
    else
      render 'index'
    end
  end

  def index
    @page_title = "All Categories"
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @books = @category.books
  end

  private 
    def category_params
      params.require(:category).permit(:name)
    end

end
