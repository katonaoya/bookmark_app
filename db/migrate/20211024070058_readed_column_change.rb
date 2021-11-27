class ReadedColumnChange < ActiveRecord::Migration[5.2]
  def change
    change_column_null :records, :readed_page, false
  end
end
