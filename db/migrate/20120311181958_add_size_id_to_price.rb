class AddSizeIdToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :size_id, :integer

  end
end
