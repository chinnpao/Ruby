class PublishersController < ApplicationController
  def new
    @page_title = "Add New Publisher"
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "Author created successfully."
      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = "Edit Publisher"
    @publisher = Publisher.find(params[:id])
  end

  def update
    @publisher = Publisher.find(params[:id])
    if @publisher.update(publisher_params)
      flash[:notice] = "Publisher updated successfully."
      redirect_to publishers_path
    else
      render 'edit'
    end
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    if @publisher.destroy
      flash[:id] = "Publisher deleted successfully."
      redirect_to publishers_path
    else
      render 'index'
    end
  end

  def index
    @page_title = "All Publisher"
    @publishers = Publisher.all
  end

  def show
  end

  private 
    def publisher_params
      params.require(:publisher).permit(:name)
    end

end
