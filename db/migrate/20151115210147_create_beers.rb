class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :photo_url
      t.integer :abv
      t.string :review

      t.timestamps null: false
    end
  end
end
