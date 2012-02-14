class CreateCats < ActiveRecord::Migration
  def self.up
    create_table :cats do |t|
      t.string :name
      t.boolean :healthy
      t.integer :age
      t.string :color
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cats
  end
end
