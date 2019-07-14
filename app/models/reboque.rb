class Reboque < ApplicationRecord
  belongs_to :veiculo
  belongs_to :cliente
  belongs_to :frota
end
