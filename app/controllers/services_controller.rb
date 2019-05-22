class ServicesController < ApplicationController

  before_action :require_admin, except: [:catalog]
  layout 'admin'

  def index
    @services = Service.order("id").all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new
    @service.safe_attributes = params[:service]

    if @service.save
      respond_to do |format|
        format.html {
          flash[:notice] = l(:notice_service_successfully_created)
          redirect_to services_path
        }
      end
    else
      respond_to do |format|
        format.html {render :action => :new}
      end
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.safe_attributes = params[:service]
    if @service.save
      respond_to do |format|
        format.html {
          flash[:notice] = l(:notice_service_successfully_updated)
          redirect_to services_path
        }
      end
    else
      respond_to do |format|
        format.html {render action: :edit}
      end
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    respond_to do |format|
      format.html {
        flash[:notice] = l(:notice_service_successfully_deleted)
        redirect_to(:back)
      }
    end
  end

  def catalog
    @services = Service.order("id").all
    @service_categories = ServiceCategory.all
    respond_to do |format|
      format.html {render :layout => 'base'}
    end
  end
end
