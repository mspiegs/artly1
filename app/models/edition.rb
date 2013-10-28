class Edition < ActiveRecord::Base
  attr_accessible :name, :number, :production_id, :purchaser, :art_piece_id

  belongs_to :production
  belongs_to :art_piece
end 
