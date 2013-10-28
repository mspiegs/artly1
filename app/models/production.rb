class Production < ActiveRecord::Base
  attr_accessible :art_piece_id, :location_id, :name, :number, :number_of_editions

  belongs_to :art_piece
  belongs_to :location
  has_many :editions
end
