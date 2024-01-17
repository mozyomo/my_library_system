class CreateEmotionTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :emotion_taggings do |t|

      t.timestamps
    end
  end
end
