class AddRangeMinToDiscount < ActiveRecord::Migration[6.0]
  def change
    add_column :discounts, :range_min, :decimal
  end
end
