class AddStartedAtToPizzaparty < ActiveRecord::Migration
  def change
    add_column :pizzaparties, :started_at, :datetime

  end
end
