require 'hooks'

Redmine::Plugin.register :redmine_service_catalog do
  name 'Redmine Service Catalog plugin'
  author 'Vincent ROBERT'
  description 'This Redmine plugin adds a service catalog and helps users to route their requests'
  version '0.0.1'
  url 'https://github.com/nanego/redmine_service_catalog'
  author_url 'https://github.com/nanego'
  menu :admin_menu, :service_catalog, { :controller => 'services', :action => 'index' },
       :caption => :label_service_catalog,
       :html => {:class => 'icon'}
end
