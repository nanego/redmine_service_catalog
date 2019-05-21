class Service < ActiveRecord::Base

  include Redmine::SafeAttributes
  safe_attributes "service_category_id", "name", "service_type"

  TYPES = ['Template', 'Wiki', 'Link']

  belongs_to :service_category

  validates_presence_of :service_category_id, :name

end
