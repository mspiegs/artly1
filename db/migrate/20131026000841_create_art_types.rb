class CreateArtTypes < ActiveRecord::Migration
  def change
    create_table :art_types do |t|
      t.string :type_of_art

      t.timestamps
    end
  end
end
