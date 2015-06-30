class Gallery < ActiveRecord::Base
  mount_uploader :image, PictureUploader
  belongs_to :service
end
