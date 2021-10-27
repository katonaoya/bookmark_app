class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :readed_page
      t.text :comment
      t.references :mybook, foreign_key: true, index: true

      t.timestamps
    end
  end
end
