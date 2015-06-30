class CreateServiceAttachments < ActiveRecord::Migration
  def change
    create_table :service_attachments do |t|
      t.integer :service_id
      t.string :picture

      t.timestamps
    end
  end
end
