json.extract! cliente, :id, :nome, :cnpj, :telefone, :celular, :email1, :email2, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
