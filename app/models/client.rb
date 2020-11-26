class Client < ApplicationRecord

    #Validações de campos com obrigatoriedades de tipos
    validates :cpf_cnpj, :numericality => {:only_integer => true}
    validates :phone, :numericality => {:only_integer => true}
    validates :number, :numericality => {:only_integer => true}
    validates :cep, :numericality => {:only_integer => true}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

    belongs_to :user
end


