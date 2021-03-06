class CreateVeiculos < ActiveRecord::Migration[5.2]
  def change
    create_table :veiculos do |t|
      t.string :modelo
      t.string :placa
      t.integer :cor
      t.string :ano
      t.string :chassi
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
