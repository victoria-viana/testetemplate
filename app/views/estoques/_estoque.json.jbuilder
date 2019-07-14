json.extract! estoque, :id, :cliente_id, :veiculo_id, :chave, :funciona, :data_entrada, :banco_id, :responsavel_entrada, :reboque, :cidade_id, :tipo_entrada_id, :data_saida, :responsavel_saida, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
