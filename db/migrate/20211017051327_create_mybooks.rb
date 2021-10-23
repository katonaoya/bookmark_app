class CreateMybooks < ActiveRecord::Migration[5.2]
  def change
    create_table :mybooks do |t|
      t.string :title, null: false
      t.string :memo
      t.integer :page, null: false
      t.text :feedback
      t.integer :readed_page
      t.boolean :reading, default: false, null: false

      t.timestamps
    end
  end
end
