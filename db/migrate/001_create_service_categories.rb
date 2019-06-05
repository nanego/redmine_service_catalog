class CreateServiceCategories < ActiveRecord::Migration[5.2]
  def change
    unless ActiveRecord::Base.connection.table_exists? :service_categories
      create_table :service_categories do |t|
        t.string :name
      end
    end
  end
end
