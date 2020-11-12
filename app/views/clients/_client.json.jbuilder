json.extract! client, :id, :cpf/cnpj, :name, :street, :number, :neighbourhood, :city, :email, :phone, :cep, :user_id, :created_at, :updated_at
json.url client_url(client, format: :json)
