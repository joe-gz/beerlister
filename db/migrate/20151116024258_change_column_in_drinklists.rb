class ChangeColumnInDrinklists < ActiveRecord::Migration
  def change
    rename_column :drinklists, :board_id, :night_id
    rename_column :drinklists, :pin_id, :beer_id
  end
end
