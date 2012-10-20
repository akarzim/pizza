class CreatePizzs < ActiveRecord::Migration
  def change
    create_table :pizzs do |t|
      t.string :name
      t.decimal :price
      t.references :toppings

      t.timestamps
    end
    add_index :pizzs, :toppings_id
  end
end
