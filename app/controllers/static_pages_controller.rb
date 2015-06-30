class StaticPagesController < ApplicationController

  def index
    @static_pages = StaticPage.all
    @services = Service.all
    @galleries = Gallery.all
    @service_attachments = ServiceAttachment.all
    @primary_services = Service.where(primary: nil)
  end

  def home
    @enquiry = Enquiry.new
    @primary_services = Service.where(primary: true)
  end

  def about
    @services = Service.all
    @art_services = Service.where(service_type: "art")
    @furniture_services = Service.where(service_type: "furniture")  
  end
end
