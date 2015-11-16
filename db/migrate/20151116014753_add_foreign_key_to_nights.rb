class AddForeignKeyToNights < ActiveRecord::Migration
  def change
    add_column :nights, :user_id, :integer
  end
end
