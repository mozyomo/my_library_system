class CreateContentReports < ActiveRecord::Migration[7.0]
  def change
    create_table :content_reports do |t|
      t.text :report_text
      t.timestamps
    end
  end
end
