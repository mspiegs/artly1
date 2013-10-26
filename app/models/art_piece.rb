class ArtPiece < ActiveRecord::Base
  attr_accessible :date, :delivery_date, :name, :number_of_pieces, :removal_date, :location_id
  attr_accessible :art_type_id
  belongs_to :location
  belongs_to :art_type

  has_many :productions
end
