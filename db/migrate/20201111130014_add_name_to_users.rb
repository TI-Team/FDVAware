class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :department_id, :integer
  end
end
