class CreatePhysicalPeople < ActiveRecord::Migration
  def change
    create_table :physical_people do |t|
      t.string :cpf, unique: true
      t.string :nome
      t.date :nascimento
      t.references :person, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
