class AddRangeMinToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :range_min, :decimal
  end
end
