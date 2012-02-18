class CreateCommandes < ActiveRecord::Migration
  def change
    create_table :commandes do |t|
      t.references :user
      t.references :pizzaparty
      t.references :pizz

      t.timestamps
    end
    add_index :commandes, :user_id
    add_index :commandes, :pizzaparty_id
    add_index :commandes, :pizz_id
  end
end
