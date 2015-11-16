class AddColumnInBeers < ActiveRecord::Migration
  def change
    add_column :beers, :brewery, :string
    add_column :beers, :type, :string
  end
end
