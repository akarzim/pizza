class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :amount

      t.timestamps
    end
  end
end
