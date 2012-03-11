class AddPizzIdToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :pizz_id, :integer

  end
end
