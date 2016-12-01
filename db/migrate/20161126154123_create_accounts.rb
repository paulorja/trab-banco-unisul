class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :tipo
      t.references :agency, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
      t.float :saldo, default: 0.0
      t.float :limite_cheque_esp
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
