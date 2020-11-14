class AddRangeMaxToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :range_max, :decimal
  end
end
