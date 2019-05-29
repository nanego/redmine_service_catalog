class Service < ActiveRecord::Base

  include Redmine::SafeAttributes
  safe_attributes "service_category_id", "name", "service_type", "issue_template_id"

  TYPES = ['Template', 'Wiki', 'Link']

  belongs_to :service_category
  belongs_to :issue_template

  validates_presence_of :service_category_id, :name

  def category
    service_category
  end

end
