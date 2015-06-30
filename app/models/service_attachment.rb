class ServiceAttachment < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :service
end
