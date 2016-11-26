class CreateLegalPeople < ActiveRecord::Migration
  def change
    create_table :legal_people do |t|
      t.string :cnpj, unique: true
      t.string :nome
      t.references :person, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
