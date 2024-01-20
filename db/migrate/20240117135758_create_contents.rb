class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :content_name 
      t.integer :content_type
      t.string :author_name
      t.string :publisher_name
      t.date :published_at
      t.string :translator_name
      t.timestamps
    end
  end
end
