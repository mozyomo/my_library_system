class AddForeignKeyToEmotionTagging < ActiveRecord::Migration[7.0]
  def change
    add_column :emotion_taggings, :content_report_id, :bigint
    add_column :emotion_taggings, :emotion_tag_id, :bigint
    add_foreign_key :emotion_taggings, :content_reports
    add_foreign_key :emotion_taggings, :emotion_tags
  end
end
