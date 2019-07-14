class CreateReboques < ActiveRecord::Migration[5.2]
  def change
    create_table :reboques do |t|
      t.references :veiculo, foreign_key: true
      t.boolean :devolucao
      t.date :data_reboque
      t.string :endereco_origem
      t.integer :cidade_origem
      t.string :endereco_destino
      t.integer :cidade_entrega
      t.references :cliente, foreign_key: true
      t.decimal :valor
      t.integer :motorista
      t.decimal :valor_terceiro
      t.references :frota, foreign_key: true

      t.timestamps
    end
  end
end
