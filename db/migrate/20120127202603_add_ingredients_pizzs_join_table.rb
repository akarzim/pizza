class AddIngredientsPizzsJoinTable < ActiveRecord::Migration
  def up
      create_table :ingredients_pizzs, :id => false do |t|
        t.integer :ingredient_id
        t.integer :pizz_id
      end
  end

  def down
    drop_table :ingredients_pizzs
  end
end
