class CreateServiceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :service_categories do |t|
      t.string :name
    end
  end
end
