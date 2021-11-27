class AddUserIdToMybooks < ActiveRecord::Migration[5.2]
  def up
    add_reference :mybooks, :user, null: false, index: true
  end

  def down
    remove_reference :mybooks, :user, index: true
  end
end
