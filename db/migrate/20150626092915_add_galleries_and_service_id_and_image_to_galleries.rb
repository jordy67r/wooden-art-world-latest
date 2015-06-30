class AddGalleriesAndServiceIdAndImageToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :galleries, :string
    add_column :galleries, :service_id, :integer
    add_column :galleries, :image, :string
  end
end
