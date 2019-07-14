json.extract! veiculo, :id, :modelo, :placa, :cor, :ano, :chassi, :cliente_id, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
