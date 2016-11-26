class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :rua
      t.string :cidade
      t.string :uf
      t.string :numero

      t.timestamps null: false
    end
  end
end
