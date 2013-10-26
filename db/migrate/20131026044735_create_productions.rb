class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :location_id
      t.integer :art_piece_id
      t.integer :number
      t.integer :number_of_editions
      t.string :name

      t.timestamps
    end
  end
end
