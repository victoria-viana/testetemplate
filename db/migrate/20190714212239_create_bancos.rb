class CreateBancos < ActiveRecord::Migration[5.2]
  def change
    create_table :bancos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
