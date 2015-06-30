class EnquiriesController < ApplicationController
  # GET /enquiries
  def index
    @enquiry = Enquiry.new
  end

  # POST /enquiries
  def create
    @enquiry = Enquiry.new(enquiry_params)

    if @enquiry.save
      redirect_to thanks_enquiries_path, notice: 'Enquiry was successfully created.'
    else
      render :new
    end
  end
  private
    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :body)
    end
end