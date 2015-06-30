class AddCentralImageToServices < ActiveRecord::Migration
  def change
    add_column :services, :central_image, :text
  end
end
