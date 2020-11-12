class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :cpf/cnpj
      t.string :name
      t.string :street
      t.string :number
      t.string :neighbourhood
      t.string :city
      t.string :email
      t.string :phone
      t.string :cep
      t.integer :user_id

      t.timestamps
    end
  end
end
