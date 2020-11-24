class RemoveDecimalFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :decimal, :string
  end
end
