class CreateAccountOperations < ActiveRecord::Migration
  def change
    create_table :account_operations do |t|
      t.references :account, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
      t.float :amount
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
