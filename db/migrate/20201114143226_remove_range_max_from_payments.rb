class RemoveRangeMaxFromPayments < ActiveRecord::Migration[6.0]
  def change
    remove_column :payments, :range_max, :decimal
  end
end
