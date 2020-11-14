class RemoveRangeMinFromPayments < ActiveRecord::Migration[6.0]
  def change
    remove_column :payments, :range_min, :decimal
  end
end
