class Service < ActiveRecord::Base

  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]

  def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  end

  has_many :sub_services, foreign_key: 'service_id', class_name: 'Service'
  belongs_to :parent, foreign_key: 'service_id', class_name: 'Service'
  has_many :service_attachments
  accepts_nested_attributes_for :service_attachments
  has_many :galleries
  accepts_nested_attributes_for :galleries

end
