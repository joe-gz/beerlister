class AddColumnToDrinklist < ActiveRecord::Migration
  def change
    add_column :drinklists, :beer_count, :integer
  end
end
