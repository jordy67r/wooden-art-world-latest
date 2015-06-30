class ServicesController < ApplicationController

  def index
    redirect_to about_us_path
    @services = Service.all
  end

  def Art
    @services = @art_services
    render 'index' 
  end
  
  def Furniture
    @services = @furniture_services
    render 'index'
  end

  def show
    @service = Service.find(params[:id])
    @services = Service.all
    @service_attachments = @service.service_attachments
    @galleries = @service.galleries
  end

  def new
    @service = Service.new
    @service_attachment = @service.service_attachments.build
    @galleries = @service.galleries.build
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        if params[:service_attachments]
          params[:service_attachments]['picture'].each do |a|
            @service_attachment = @service.service_attachments.create!(:picture => a, :service_id => @service.id)
          end
        end
        if params[:galleries]
          params[:galleries]['image'].each do |a|
            @galleries = @service.galleries.create!(:image => a, :service_id => @service.id)
          end
        end
        format.html { redirect_to @service, notice: 'service was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private

    def set_service
      @service = Service.find(params[:id])
    end
    
    def service_params
      params.require(:service).permit(:title, :service_id, :primary, :quote, :body, service_attachments_attributes: [:id, :service_id, :picture], galleries_attributes: [:id, :service_id, :image])
    end

end