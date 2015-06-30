class AddRightImageToServices < ActiveRecord::Migration
  def change
    add_column :services, :right_image, :text
  end
end
