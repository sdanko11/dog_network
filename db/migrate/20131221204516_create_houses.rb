class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.integer :owner_id, null: false
      t.integer :dog_id, null: false
      t.timestamps
    end
  end
end
