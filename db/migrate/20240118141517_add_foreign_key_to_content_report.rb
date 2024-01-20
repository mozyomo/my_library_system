class AddForeignKeyToContentReport < ActiveRecord::Migration[7.0]
  def change
    add_column :content_reports, :content_id, :bigint
    add_foreign_key :content_reports, :contents
  end
end
