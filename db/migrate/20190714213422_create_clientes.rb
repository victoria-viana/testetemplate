class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cnpj
      t.string :telefone
      t.string :celular
      t.string :email1
      t.string :email2

      t.timestamps
    end
  end
end
