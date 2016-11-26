class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :nome
      t.integer :numero, unique: true

      t.timestamps null: false
    end
  end
end
