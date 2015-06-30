class AddPrimaryToServices < ActiveRecord::Migration
  def change
    add_column :services, :primary, :boolean
  end
end
