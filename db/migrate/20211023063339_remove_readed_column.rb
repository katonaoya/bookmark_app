class RemoveReadedColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :mybooks, :readed_page, :integer
  end
end
