class ServiceCategoriesController < ApplicationController

  before_action :require_admin
  layout 'admin'

  def index
    @categories = ServiceCategory.order("id").all
  end

  def show
    @category = ServiceCategory.find(params[:id])
  end

  def new
    @category = ServiceCategory.new
  end

  def create
    @category = ServiceCategory.new
    @category.safe_attributes = params[:service_category]

    if @category.save
      respond_to do |format|
        format.html {
          flash[:notice] = l(:notice_category_successfully_created)
          redirect_to service_categories_path
        }
      end
    else
      respond_to do |format|
        format.html {render :action => :new}
      end
    end
  end

  def edit
    @category = ServiceCategory.find(params[:id])
  end

  def update
    @category = ServiceCategory.find(params[:id])
    @category.safe_attributes = params[:category]
    if @category.save
      respond_to do |format|
        format.html {
          flash[:notice] = l(:notice_category_successfully_updated)
          redirect_to service_categories_path
        }
      end
    else
      respond_to do |format|
        format.html {render action: :edit}
      end
    end
  end

  def destroy
    @category = ServiceCategory.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html {
        flash[:notice] = l(:notice_category_successfully_deleted)
        redirect_to(:back)
      }
    end
  end

end
