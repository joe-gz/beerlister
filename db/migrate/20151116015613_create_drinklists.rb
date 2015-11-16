class CreateDrinklists < ActiveRecord::Migration
  def change
    create_table :drinklists do |t|
      t.references :board
      t.references :pin
      t.timestamps null: false
    end
  end
end
