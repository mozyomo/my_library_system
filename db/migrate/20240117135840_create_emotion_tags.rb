class CreateEmotionTags < ActiveRecord::Migration[7.0]
  def change
    create_table :emotion_tags do |t|

      t.timestamps
    end
  end
end
