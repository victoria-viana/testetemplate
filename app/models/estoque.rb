class Estoque < ApplicationRecord
  belongs_to :cliente
  belongs_to :veiculo
  belongs_to :banco
  belongs_to :cidade
  belongs_to :tipo_entrada
end
