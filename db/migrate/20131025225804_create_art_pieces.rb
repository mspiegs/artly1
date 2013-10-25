class CreateArtPieces < ActiveRecord::Migration
  def change
    create_table :art_pieces do |t|
      t.string :name
      t.date :delivery_date
      t.date :date
      t.integer :number_of_pieces
      t.date :removal_date

      t.timestamps
    end
  end
end
