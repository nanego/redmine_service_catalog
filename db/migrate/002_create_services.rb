class CreateServices < ActiveRecord::Migration[5.2]
  def change
    unless ActiveRecord::Base.connection.table_exists? :services
      create_table :services do |t|
        t.string :name
        t.references :service_category, foreign_key: true
      end
    end
  end
end
