class AddTypeOfArtToArtPieces < ActiveRecord::Migration
  def change
    add_column :art_pieces, :art_type_id, :integer
  end
end
