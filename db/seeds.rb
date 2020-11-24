# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require('ffaker')

#Popula o banco com items
10.times do |i| 
  Item.create(description:FFaker::Product.product_name, price:FFaker::Random.rand(max = 1000), quantity:FFaker::Random.rand(max = 10))
end

#Popula o banco com departamentos
Department.create(description:"Tecnologia da Informação")
Department.create(description:"Administrativo")
Department.create(description:"Comercial")
Department.create(description:"Faturamento")
Department.create(description:"Financeiro")
Department.create(description:"Logistica")
Department.create(description:"RH")
Department.create(description:"Serviços Gerais")

#Popula o banco com um usuario admin@admin.com e senha admin
User.create(email:"admin@admin.com", password:"AdminAdmin", name:"Admin", cpf:"111.222.333-45", department_id:1)

#Popula o banco com Clientes
10.times do |i|
  Client.create(cpf_cnpj:FFaker::IdentificationBR.pretty_cpf, name:FFaker::Name.name, street:FFaker::AddressBR.street_name, number:FFaker::AddressBR.building_number,
                  neighbourhood:FFaker::AddressBR.neighborhood, city:FFaker::AddressBR.city, email:FFaker::Internet.email, phone:FFaker::PhoneNumberBR.phone_number,
                  cep:FFaker::AddressBR.zip_code, user_id:1)
end

#Popula o banco com métodos de pagamento
Payment.create(description:"Cartao de credito")
Payment.create(description:"Cartao de debito")
Payment.create(description:"Dinheiro")
Payment.create(description:"Boleto")

#Popula o banco com descontos
Discount.create(description:"25%", value:25, range_max:410.99 , range_min:200)
Discount.create(description:"27%", value:27, range_max:1429.99 , range_min:411)
Discount.create(description:"30%", value:30, range_max:99999.99 , range_min:1430)