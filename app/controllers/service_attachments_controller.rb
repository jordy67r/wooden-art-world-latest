class ServiceAttachmentsController < ApplicationController
  before_action :set_service_attachment, only: [:show, :edit, :update, :destroy]

  # GET /service_attachments
  def index
    @service_attachments = ServiceAttachment.all
  end

  # GET /service_attachments/1
  def show    
  end

  # GET /service_attachments/new
  def new
    @service_attachment = ServiceAttachment.new
  end

  # GET /service_attachments/1/edit
  def edit
  end

  # POST /service_attachments
  def create
    @service_attachment = ServiceAttachment.new(service_attachment_params)

    if @service_attachment.save
      redirect_to @service_attachment, notice: 'Service attachment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /service_attachments/1
  def update
    respond_to do |format|
      if @service_attachment.update(service_attachment_params)
        format.html { redirect_to @service_attachment.service, notice: 'Service attachment was successfully updated.' }
      end 
    end
  end

  # DELETE /service_attachments/1
  def destroy
    @service_attachment.destroy
    redirect_to service_attachments_url, notice: 'Service attachment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_attachment
      @service_attachment = ServiceAttachment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_attachment_params
      params.require(:service_attachment).permit(:service_id, :picture)
    end
end
