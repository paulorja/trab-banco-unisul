class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
