class AddEndedAtAndEatersToPizzaParty < ActiveRecord::Migration
  def change
    add_column :pizzaparties, :ended_at, :datetime
    add_column :pizzaparties, :user_id, :integer

    add_foreign_key :pizzaparties, :users, :column => 'user_id'

    add_index :pizzaparties, :user_id
  end
end
