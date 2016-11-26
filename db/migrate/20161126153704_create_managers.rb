class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :login, unique: true
      t.string :senha

      t.timestamps null: false
    end
  end
end
