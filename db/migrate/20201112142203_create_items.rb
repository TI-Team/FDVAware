class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :description
      t.string :price
      t.string :decimal
      t.integer :quantity

      t.timestamps
    end
  end
end
