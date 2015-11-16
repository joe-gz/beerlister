class CreateNights < ActiveRecord::Migration
  def change
    create_table :nights do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
