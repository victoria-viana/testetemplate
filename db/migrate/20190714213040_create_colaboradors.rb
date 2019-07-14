class CreateColaboradors < ActiveRecord::Migration[5.2]
  def change
    create_table :colaboradors do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :celular
      t.string :email
      t.string :whatsapp
      t.boolean :interno

      t.timestamps
    end
  end
end
