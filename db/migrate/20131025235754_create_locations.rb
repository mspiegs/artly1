class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact_person
      t.string :phone
      t.text :notes

      t.timestamps
    end
  end
end
