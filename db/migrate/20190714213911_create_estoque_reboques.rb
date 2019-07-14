class CreateEstoqueReboques < ActiveRecord::Migration[5.2]
  def change
    create_table :estoque_reboques do |t|
      t.references :estoque, foreign_key: true
      t.references :reboque, foreign_key: true

      t.timestamps
    end
  end
end
