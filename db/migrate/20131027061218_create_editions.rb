class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :number
      t.string :name
      t.integer :production_id
      t.string :purchaser

      t.timestamps
    end
  end
end
