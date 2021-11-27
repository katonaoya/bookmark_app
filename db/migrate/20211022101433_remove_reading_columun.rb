class RemoveReadingColumun < ActiveRecord::Migration[5.2]
  def up
    remove_column :mybooks, :reading
  end

  def down
    add_column :mybooks, :reading, :boolean
  end
end
