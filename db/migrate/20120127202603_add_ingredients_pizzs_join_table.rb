class AddToppingsPizzsJoinTable < ActiveRecord::Migration
  def up
      create_table :toppings_pizzs, :id => false do |t|
        t.integer :topping_id
        t.integer :pizz_id
      end
  end

  def down
    drop_table :toppings_pizzs
  end
end
