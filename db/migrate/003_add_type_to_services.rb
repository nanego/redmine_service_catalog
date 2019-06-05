class AddTypeToServices < ActiveRecord::Migration[5.2]
  def change
    unless column_exists?(:services, :service_type, :string)
      add_column :services, :service_type, :string
    end
  end
end
