class CreateBookReports < ActiveRecord::Migration[7.0]
  def change
    create_table :book_reports do |t|

      t.timestamps
    end
  end
end
