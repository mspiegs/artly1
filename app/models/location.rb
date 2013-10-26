class Location < ActiveRecord::Base
  attr_accessible :address, :city, :contact_person, :name, :notes, :phone, :state, :zip
end
