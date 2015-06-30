class Service < ActiveRecord::Base
  has_many :sub_services, foreign_key: 'service_id', class_name: 'Service'
  belongs_to :parent, foreign_key: 'service_id', class_name: 'Service'
  has_many :service_attachments
  accepts_nested_attributes_for :service_attachments
  has_many :galleries
  accepts_nested_attributes_for :galleries
end
