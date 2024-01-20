class AddForeignKeyToContent < ActiveRecord::Migration[7.0]
  def change
    add_column :contents, :store_id, :bigint
    add_foreign_key :contents, :stores
    change_column_null :contents, :content_name, false
    change_column_null :contents, :content_type, false
  end
end
