class CreateEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :estoques do |t|
      t.references :cliente, foreign_key: true
      t.references :veiculo, foreign_key: true
      t.boolean :chave
      t.boolean :funciona
      t.date :data_entrada
      t.references :banco, foreign_key: true
      t.integer :responsavel_entrada
      t.boolean :reboque
      t.references :cidade, foreign_key: true
      t.references :tipo_entrada, foreign_key: true
      t.date :data_saida
      t.integer :responsavel_saida

      t.timestamps
    end
  end
end
