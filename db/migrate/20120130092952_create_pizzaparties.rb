class CreatePizzaparties < ActiveRecord::Migration
  def change
    create_table :pizzaparties do |t|

      t.timestamps
    end
  end
end
