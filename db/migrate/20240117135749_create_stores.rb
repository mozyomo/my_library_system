class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.integer :store_type
      t.timestamps
    end
  end
end
