class AddTemplateIdToServices < ActiveRecord::Migration[5.2]
  def change
    unless column_exists?(:services, :issue_template_id, :integer)
      add_column :services, :issue_template_id, :integer
    end
  end
end
