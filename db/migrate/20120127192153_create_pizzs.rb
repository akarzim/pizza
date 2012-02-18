class CreatePizzs < ActiveRecord::Migration
  def change
    create_table :pizzs do |t|
      t.string :name
      t.decimal :price
      t.references :ingredients

      t.timestamps
    end
    add_index :pizzs, :ingredients_id
  end
end
