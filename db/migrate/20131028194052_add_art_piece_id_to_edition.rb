class AddArtPieceIdToEdition < ActiveRecord::Migration
  def change
    add_column :editions, :art_piece_id, :integer
  end
end
