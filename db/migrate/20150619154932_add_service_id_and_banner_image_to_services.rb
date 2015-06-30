class AddServiceIdAndBannerImageToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_id, :integer
    add_column :services, :banner_image, :string
  end
end
