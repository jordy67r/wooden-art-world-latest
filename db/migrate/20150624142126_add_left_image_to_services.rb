class AddLeftImageToServices < ActiveRecord::Migration
  def change
    add_column :services, :left_image, :text
  end
end
