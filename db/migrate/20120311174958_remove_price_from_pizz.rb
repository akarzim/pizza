class RemovePriceFromPizz < ActiveRecord::Migration
  def up
    remove_column :pizzs, :price
      end

  def down
    add_column :pizzs, :price, :integer
  end
end
