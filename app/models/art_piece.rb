class ArtPiece < ActiveRecord::Base
  attr_accessible :date, :delivery_date, :name, :number_of_pieces, :removal_date
end
