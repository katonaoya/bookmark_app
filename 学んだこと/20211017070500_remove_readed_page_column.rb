class RemoveReadedPageColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :mybooks, :reading_page, :integer
  end
end
