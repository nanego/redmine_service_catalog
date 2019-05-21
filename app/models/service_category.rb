class ServiceCategory < ActiveRecord::Base

  include Redmine::SafeAttributes
  safe_attributes "name"

  validates_presence_of :name

  def to_s
    name
  end

end
