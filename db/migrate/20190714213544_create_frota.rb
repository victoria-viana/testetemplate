class CreateFrota < ActiveRecord::Migration[5.2]
  def change
    create_table :frota do |t|
      t.string :modelo
      t.string :placa
      t.string :renavan
      t.references :tipo_entrada, foreign_key: true
      t.boolean :interno

      t.timestamps
    end
  end
end
