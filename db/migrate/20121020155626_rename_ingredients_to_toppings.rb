class RenameIngredientsToToppings < ActiveRecord::Migration
  def up
    rename_table :ingredients, :toppings
    rename_table :ingredients_pizzs, :pizzs_toppings

    change_table :pizzs_toppings do |t|
      t.rename :ingredient_id, :topping_id
    end
  end

  def down
    change_table :pizzs_toppings do |t|
      t.rename :topping_id, :ingredient_id
    end

    rename_table :pizzs_toppings, :ingredients_pizzs
    rename_table :toppings, :ingredients
  end
end
