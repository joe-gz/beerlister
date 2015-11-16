class AddColumnInNights < ActiveRecord::Migration
  def change
    add_column :nights, :description, :string
  end
end
