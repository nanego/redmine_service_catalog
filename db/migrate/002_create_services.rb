class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.references :service_category, foreign_key: true
    end
  end
end
