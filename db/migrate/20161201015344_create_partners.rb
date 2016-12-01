class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.references :person, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
