class AddRangeMaxToDiscount < ActiveRecord::Migration[6.0]
  def change
    add_column :discounts, :range_max, :decimal
  end
end
