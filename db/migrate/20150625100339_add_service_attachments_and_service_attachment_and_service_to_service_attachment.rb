class AddServiceAttachmentsAndServiceAttachmentAndServiceToServiceAttachment < ActiveRecord::Migration
  def change
    add_column :service_attachments, :service_attachments, :string
    add_column :service_attachments, :service_attachment, :string
    add_column :service_attachments, :service, :string
  end
end
