module RedmineServiceCatalog
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      stylesheet_link_tag("service_catalog", :plugin => "redmine_service_catalog")
    end
  end
end
